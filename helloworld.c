#include "platform.h"
#include "xgpio.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xbram.h"


// Define the base address of the BRAM
#define BRAM_SIZE_WORDS 1024
#define START_CHANNEL 1
#define COMPLETE_CHANNEL 2

XGpio RW_pin;

int init_perf() {
    int status;
    XBram Bram;
    XBram_Config *ConfigPtr;

    status = XGpio_Initialize(&RW_pin, XPAR_AXI_GPIO_0_DEVICE_ID);
    if (status != XST_SUCCESS) {
        xil_printf("GPIO Input Initialisation Failed\n");
        return XST_FAILURE;
    }


    ConfigPtr = XBram_LookupConfig(XPAR_BRAM_0_DEVICE_ID);
   	if (ConfigPtr == (XBram_Config *) NULL) {
   		return XST_FAILURE;
   	}

   	status = XBram_CfgInitialize(&Bram, ConfigPtr,
   					 ConfigPtr->CtrlBaseAddress);
   	if (status != XST_SUCCESS) {
   		return XST_FAILURE;
   	}

    return XST_SUCCESS;
}


uint32_t read_gpio() {
    volatile uint32_t gpio_state = XGpio_DiscreteRead(&RW_pin, COMPLETE_CHANNEL);
    //xil_printf("GPIO Output State: 0x%08X\r\n", gpio_state);

    return gpio_state;
}

void set_gpio_high() {
    XGpio_DiscreteWrite(&RW_pin, START_CHANNEL, 1);  // Set pin 0 high
}

void set_gpio_low() {
	XGpio_DiscreteWrite(&RW_pin, START_CHANNEL, 0);  // Set pin 0 low
}

void write_to_bram(uint32_t offset, uint32_t data) {
    if (offset < BRAM_SIZE_WORDS) {
        XBram_WriteReg(XPAR_BRAM_0_BASEADDR, offset * 4, data); // Write using XBram_WriteReg
        xil_printf("Wrote 0x%08X to BRAM at address 0x%08X\r\n",
                   (unsigned int)data,
                   (unsigned int)(XPAR_BRAM_0_BASEADDR + offset * 4));
    } else {
        xil_printf("Error: Offset out of BRAM bounds\r\n");
    }
}

void msleep(uint32_t delay){
	//delay in ms since we dont have it
	usleep(delay * 1000);
}

uint32_t read_from_bram(uint32_t offset) {
    if (offset < BRAM_SIZE_WORDS) {
        uint32_t data = XBram_ReadReg(XPAR_BRAM_0_BASEADDR + 0x0300, 0); // Read using XBram_ReadReg
        xil_printf("Read %d from BRAM at address 0x%08X\r\n",
                   (unsigned int)data,
                   (unsigned int)(XPAR_BRAM_0_BASEADDR + 0x0300));
        return data;
    } else {
        xil_printf("Error: Offset out of BRAM bounds\r\n");
        return 0;
    }
}

int main() {
	init_platform();

    int status = init_perf();
    if (status != XST_SUCCESS) {
    	xil_printf("GPIO Initialised .\r\n");
        return XST_FAILURE;
    }

    uint32_t data_to_write[8] = {
            0x61646380, 0x00000000, 0x00000000, 0x00000000,
            0x00000000, 0x00000000, 0x00000000, 0x00000018
        };

    // Write the 256-bit data to BRAM
	for (uint32_t i = 0; i < 8; ++i) {
		write_to_bram(i, data_to_write[i]); // Write each 32-bit chunk
	}
    usleep(5);

    xil_printf("GPIO Initialised Successfully.\r\n");
    sleep(2);

    while (1) {
		set_gpio_high();
		usleep(5);
		set_gpio_low();

		while(read_gpio() != 1);

		uint32_t bram_data = read_from_bram(10);
		//xil_printf("Read: %x\r\n", bram_data);
		//data_to_write = bram_data + 0x1;
		xil_printf("Complete the Computation\r\n");
		msleep(1000);

    }

    cleanup_platform();
    return 0;
}


