`timescale 1 ps / 1 ps

module MB_Top
   (led_16bits_tri_o,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
    
  // Port declarations
  output [15:0] led_16bits_tri_o;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  // Internal wire declarations
  wire [15:0] led_16bits_tri_o;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  // Internal GPIO connections for AXI GPIO to communicate with simple_axi_rw
  wire gpio_wstart;          // Signal to start AXI write operation
  wire gpio_wcomplete;       // Signal to indicate completion of AXI write operation

  // Instantiate MB (MicroBlaze) subsystem
  MB MB_i
       (
        .led_16bits_tri_o(led_16bits_tri_o),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        
        // Connect AXI GPIO signals to communicate with simple_axi_rw
        .gpio_io_o(gpio_wstart),       // Assume gpio_io_o[0:0] triggers simple_axi_rw
        .gpio2_io_i(gpio_wcomplete)    // Assume gpio2_io_i[0:0] receives completion signal
       );

  // Instantiate simple_axi_rw for AXI transactions
  simple_axi_rw #(
       .AXI_ADDR_WIDTH(32),
       .AXI_DATA_WIDTH(32)
  ) simple_axi_rw_inst (
       .M_AXI_ACLK(sys_clock),            // AXI clock from system clock
       .M_AXI_ARESETN(~reset),            // Active-low reset
       .gpio_wstart(gpio_wstart),         // Start signal from GPIO
       .gpio_wcomplete(gpio_wcomplete),   // Completion signal to GPIO

       // Connect AXI signals (assuming these come from the MB module as part of AXI interface)
       .M_AXI_AWADDR(M_AXI_AWADDR),
       .M_AXI_AWPROT(M_AXI_AWPROT),
       .M_AXI_AWVALID(M_AXI_AWVALID),
       .M_AXI_AWREADY(M_AXI_AWREADY),
       .M_AXI_WDATA(M_AXI_WDATA),
       .M_AXI_WSTRB(M_AXI_WSTRB),
       .M_AXI_WVALID(M_AXI_WVALID),
       .M_AXI_WREADY(M_AXI_WREADY),
       .M_AXI_BRESP(M_AXI_BRESP),
       .M_AXI_BVALID(M_AXI_BVALID),
       .M_AXI_BREADY(M_AXI_BREADY),
       .M_AXI_ARADDR(M_AXI_ARADDR),
       .M_AXI_ARPROT(M_AXI_ARPROT),
       .M_AXI_ARVALID(M_AXI_ARVALID),
       .M_AXI_ARREADY(M_AXI_ARREADY),
       .M_AXI_RDATA(M_AXI_RDATA),
       .M_AXI_RRESP(M_AXI_RRESP),
       .M_AXI_RVALID(M_AXI_RVALID),
       .M_AXI_RREADY(M_AXI_RREADY)
  );

endmodule
