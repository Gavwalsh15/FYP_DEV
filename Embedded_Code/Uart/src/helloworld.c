#include <stdio.h>
#include <string.h>
#include "platform.h"
#include <xil_printf.h>
#include "xuartlite.h"
#include "xparameters.h"
#include "sleep.h"

#define BRAM_START_ADDR 0xC0000000
#define DATA_SIZE 256  // Define the number of bytes to read

int main() {
    init_platform();

    // Buffer to hold the read data
    unsigned char data[DATA_SIZE] = {0};
    xil_printf("Application starting\r\n");

    while (1) {
        // Read data from BRAM
        for (int i = 0; i < DATA_SIZE; i++) {
            data[i] = *(volatile unsigned char *)(BRAM_START_ADDR + i);
        }

        // Print the data in hex format
        xil_printf("Data from BRAM:\r\n");
        for (int i = 0; i < DATA_SIZE; i++) {
            xil_printf("0x%04X ", data[i]);
            if ((i + 1) % 16 == 0) {
                xil_printf("\r\n"); // New line after every 16 bytes
            }
        }
        xil_printf("\r\n");

        // Wait for 1 second
        sleep(1);
        xil_printf("Loop complete\r\n");
    }

    cleanup_platform();
    return 0;
}