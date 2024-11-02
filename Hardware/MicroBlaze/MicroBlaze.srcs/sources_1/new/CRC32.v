module hello_world_writer (
    input wire clk,                    // Clock input
    input wire reset,                  // Active-high reset input
    output reg [31:0] s_axi_awaddr,    // Write address
    output reg [3:0] s_axi_awlen,      // Burst length
    output reg [2:0] s_axi_awsize,     // Burst size
    output reg [1:0] s_axi_awburst,    // Burst type
    output reg s_axi_awvalid,          // Write address valid
    input wire s_axi_awready,          // Write address ready
    output reg [31:0] s_axi_wdata,     // Write data
    output reg [3:0] s_axi_wstrb,      // Write strobes
    output reg s_axi_wvalid,           // Write valid
    input wire s_axi_wready,           // Write ready
    output reg s_axi_bready,           // Response ready
    input wire [1:0] s_axi_bresp,      // Write response
    input wire s_axi_bvalid            // Response valid
);

    // Memory array for "Hello, World!"
    reg [7:0] hello_world [0:12];
    reg [3:0] write_index;             // Index for write operation
    reg [1:0] state;                   // State machine variable
    
    localparam IDLE = 2'b00,
               ADDR = 2'b01,
               WRITE = 2'b10,
               RESP = 2'b11;
               
    // Initialization of the hello_world array on reset
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Initialize "Hello, World!" string
            hello_world[0] <= 8'h48; // 'H'
            hello_world[1] <= 8'h65; // 'e'
            hello_world[2] <= 8'h6C; // 'l'
            hello_world[3] <= 8'h6C; // 'l'
            hello_world[4] <= 8'h6F; // 'o'
            hello_world[5] <= 8'h2C; // ','
            hello_world[6] <= 8'h20; // ' '
            hello_world[7] <= 8'h57; // 'W'
            hello_world[8] <= 8'h6F; // 'o'
            hello_world[9] <= 8'h72; // 'r'
            hello_world[10] <= 8'h6C; // 'l'
            hello_world[11] <= 8'h64; // 'd'
            hello_world[12] <= 8'h21; // '!'

            // Initialize AXI signals and state
            s_axi_awaddr <= 32'hC0000000;
            s_axi_awlen <= 4'd12;
            s_axi_awsize <= 3'b010;
            s_axi_awburst <= 2'b01;
            s_axi_awvalid <= 1'b0;
            s_axi_wstrb <= 4'b0001;   // Enable only the lowest byte for each write
            s_axi_wvalid <= 1'b0;
            s_axi_bready <= 1'b0;
            write_index <= 0;
            state <= IDLE;
        end else begin
            case (state)
                IDLE: begin
                    if (write_index == 0) begin
                        s_axi_awvalid <= 1'b1;
                        state <= ADDR;
                    end
                end
                ADDR: begin
                    if (s_axi_awready && s_axi_awvalid) begin
                        s_axi_awvalid <= 1'b0;
                        s_axi_wvalid <= 1'b1;
                        s_axi_wdata <= {24'b0, hello_world[write_index]};
                        state <= WRITE;
                    end
                end
                WRITE: begin
                    if (s_axi_wready && s_axi_wvalid) begin
                        s_axi_wvalid <= 1'b0;
                        s_axi_bready <= 1'b1;
                        state <= RESP;
                    end
                end
                RESP: begin
                    if (s_axi_bvalid && s_axi_bready) begin
                        s_axi_bready <= 1'b0;
                        write_index <= write_index + 1;
                        if (write_index < 13) begin
                            s_axi_wvalid <= 1'b1;
                            s_axi_wdata <= {24'b0, hello_world[write_index]};
                            state <= WRITE;
                        end else begin
                            state <= IDLE;
                        end
                    end
                end
            endcase
        end
    end
endmodule
