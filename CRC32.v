module simple_axi_writer
  #(
    parameter integer AXI_ADDR_WIDTH = 32,
    parameter integer AXI_DATA_WIDTH = 32
  )
  (
    input wire                           GPIO_start,
    output reg                           GPIO_complete,
  
    input                                M_AXI_ACLK,
    input                                M_AXI_ARESETN,

    // AXI write address channel signals
    output wire [AXI_ADDR_WIDTH-1 : 0]   M_AXI_AWADDR,
    output wire [2 : 0]                  M_AXI_AWPROT,
    output reg                           M_AXI_AWVALID,
    input wire                           M_AXI_AWREADY,

    // AXI write data channel signals
    output wire [AXI_DATA_WIDTH-1 : 0]   M_AXI_WDATA,
    output wire [AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
    output reg                           M_AXI_WVALID,
    input wire                           M_AXI_WREADY,

    // AXI write response channel signals
    input wire [1 : 0]                   M_AXI_BRESP,
    input wire                           M_AXI_BVALID,
    output reg                           M_AXI_BREADY,

    // AXI read address channel signals
    output wire [AXI_ADDR_WIDTH-1 : 0]   M_AXI_ARADDR,
    output wire [2 : 0]                  M_AXI_ARPROT,
    output reg                           M_AXI_ARVALID,
    input wire                           M_AXI_ARREADY,

    // AXI read data channel signals
    input wire [AXI_DATA_WIDTH-1 : 0]    M_AXI_RDATA,
    input wire [1 : 0]                   M_AXI_RRESP,
    input wire                           M_AXI_RVALID,
    output reg                           M_AXI_RREADY
  );
  
  reg hash_start;
  wire done;
  reg [511:0] block = 512'h61626380000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018;
  wire [255:0] hash;
  
  sha256 sha256_inst(
    .clk(M_AXI_ACLK),
    .rst(~M_AXI_ARESETN),
    .start(hash_start),
    .block(block),
    .hash(hash),
    .done(done)
  );

  // Address and data constants
  localparam SOURCE_ADDR = 32'hC000_0000;
  localparam TARGET_ADDR = 32'hC000_0300;

  // Internal registers
  reg [AXI_DATA_WIDTH-1:0] read_data;   
  reg start_transaction;
  reg GPIO_d;

  // State encoding using localparam for Verilog compatibility
  localparam IDLE        = 3'b000;
  localparam READ_ADDR   = 3'b001;
  localparam READ_DATA   = 3'b010;
  localparam WRITE_ADDR  = 3'b011;
  localparam WRITE_DATA  = 3'b100;
  localparam WRITE_RESP  = 3'b101;
  localparam COMPLETE    = 3'b110;

  reg [2:0] state, next_state;

  // Assign fixed outputs
  assign M_AXI_AWADDR = TARGET_ADDR;
  assign M_AXI_AWPROT = 3'b000;
  assign M_AXI_WDATA = hash;  
  assign M_AXI_WSTRB = 4'b1111;    
  assign M_AXI_ARADDR = SOURCE_ADDR;
  assign M_AXI_ARPROT = 3'b000;

  // Generate a one-cycle pulse for start_transaction
  // This caused unkown pain to me
  always @(posedge M_AXI_ACLK) begin
    if (~M_AXI_ARESETN)
      GPIO_d <= 1'b0;
    else
      GPIO_d <= GPIO_start;
    start_transaction <= ~GPIO_d & GPIO_start;
  end

  // FSM: State transition logic
  always @(posedge M_AXI_ACLK) begin
    if (~M_AXI_ARESETN)
      state <= IDLE;
    else
      state <= next_state;
  end
  
  always @* begin
    // Default values for outputs
    M_AXI_ARVALID = 1'b0;
    M_AXI_RREADY = 1'b0;
    M_AXI_AWVALID = 1'b0;
    M_AXI_WVALID = 1'b0;
    M_AXI_BREADY = 1'b0;
    hash_start = 1'b0;
    
    
    case (state)
      IDLE: begin
        if (start_transaction) begin 
          next_state = READ_ADDR;
          GPIO_complete = 1'b0;
        end else
          next_state = IDLE;
          GPIO_complete = 1'b1;
      end

      READ_ADDR: begin
        hash_start = 1'b1;
        M_AXI_ARVALID = 1'b1;
        if (M_AXI_ARREADY)
          next_state = READ_DATA;
        else
          next_state = READ_ADDR;
      end

      READ_DATA: begin
        M_AXI_RREADY = 1'b1;
        if (M_AXI_RVALID) begin
          read_data = M_AXI_RDATA; 
          next_state = WRITE_ADDR;
        end else
          next_state = READ_DATA;
      end

      WRITE_ADDR: begin
        M_AXI_AWVALID = 1'b1;
        if (M_AXI_AWREADY)
          next_state = WRITE_DATA;
        else
          next_state = WRITE_ADDR;
      end

      WRITE_DATA: begin
        M_AXI_WVALID = 1'b1;
        if (M_AXI_WREADY)
          next_state = WRITE_RESP;
        else
          next_state = WRITE_DATA;
      end

      WRITE_RESP: begin
        M_AXI_BREADY = 1'b1;
        if (M_AXI_BVALID) begin
          GPIO_complete = 1'b1;
          next_state = COMPLETE;
        end else
          next_state = WRITE_RESP;
      end

      COMPLETE: begin
        GPIO_complete = 1'b1;
        next_state = IDLE;
      end

      default: next_state = IDLE;
    endcase
  end

endmodule

module sha256 (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [511:0] block,
    output wire [255:0] hash,
    output wire done
);

  wire [31:0] a, b, c, d, e, f, g, h;
  wire [31:0] a_next, b_next, c_next, d_next, e_next, f_next, g_next, h_next;
  wire [31:0] Wt, Kt;
  wire [6:0] round;
  wire processing;


  sha256_w_mem w_mem (
      .clk(clk),
      .rst(rst),
      .start(start),
      .block(block),
      .round(round),
      .Wt(Wt)
  );

  sha256_core core (
      .clk(clk),
      .rst(rst),
      .start(start),
      .round(round),
      .processing(processing),
      .a(a),
      .b(b),
      .c(c),
      .d(d),
      .e(e),
      .f(f),
      .g(g),
      .h(h),
      .a_next(a_next),
      .b_next(b_next),
      .c_next(c_next),
      .d_next(d_next),
      .e_next(e_next),
      .f_next(f_next),
      .g_next(g_next),
      .h_next(h_next),
      .Wt(Wt),
      .Kt(Kt)
  );

  sha256_k_mem k_mem (
      .round(round),
      .Kt(Kt)
  );

  sha256_reg_update reg_update (
      .clk(clk),
      .rst(rst),
      .start(start),
      .processing(processing),
      .a_next(a_next), .b_next(b_next), .c_next(c_next), .d_next(d_next), 
      .e_next(e_next), .f_next(f_next), .g_next(g_next), .h_next(h_next),
      .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h),
      .hash(hash),
      .done(done)
  );

endmodule

// Core SHA-256 computation module
module sha256_core (
    input wire clk,
    input wire rst,
    input wire start,
    output reg processing,
    input wire [31:0] a, b, c, d, e, f, g, h,
    input wire [31:0] Wt,
    input wire [31:0] Kt,
    output reg [31:0] a_next, b_next, c_next, d_next, e_next, f_next, g_next, h_next,
    output reg [6:0] round
);

  wire [31:0] Ch, Maj;
  reg [31:0] Sigma0, Sigma1, T1, T2;

  assign Ch  = (e & f) ^ (~e & g);
  assign Maj = (a & b) ^ (a & c) ^ (b & c);

  function [31:0] right_rotate(input [31:0] value, input [4:0] bits);
    begin
      right_rotate = (value >> bits) | (value << (32 - bits));
    end
  endfunction

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      round <= 7'd0;
      processing <= 1'b0;
    end else if (start) begin
      round <= 7'd0;
      processing <= 1'b1;
    end else if (processing) begin
      if (round == 7'd63) begin
        processing <= 1'b0;
      end else begin
        round <= round + 7'd1;
      end
    end
  end

  always @(*) begin
    if (processing) begin
      h_next <= g;
      g_next <= f;
      f_next <= e;
      e_next <= d + T1;

      d_next <= c;
      c_next <= b;
      b_next <= a;
      a_next <= T1 + T2;

      Sigma1 <= right_rotate(e, 6) ^ right_rotate(e, 11) ^ right_rotate(e, 25);
      Sigma0 <= right_rotate(a, 2) ^ right_rotate(a, 13) ^ right_rotate(a, 22);

      T1 <= h + Sigma1 + Ch + Kt + Wt;
      T2 <= Sigma0 + Maj;
    end else begin
      h_next <= h;
      g_next <= g;
      f_next <= f;
      e_next <= e;
      d_next <= d;
      c_next <= c;
      b_next <= b;
      a_next <= a;

      T1 <= T1;
      T2 <= T2;

    end
  end

endmodule

// W memory module
module sha256_top (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [511:0] block,
    output wire [255:0] hash,
    output wire done,
    // Debug outputs
    output wire [31:0] debug_a, debug_b, debug_c, debug_d, debug_e, debug_f, debug_g, debug_h,
    output wire [31:0] debug_Wt,
    output wire [6:0] debug_round,
    output wire [31:0] T1, T2,
    output wire [31:0] d_Sigma1, d_Sigma0 
);

    wire [31:0] a, b, c, d, e, f, g, h;
    wire [31:0] a_next, b_next, c_next, d_next, e_next, f_next, g_next, h_next;
    wire [31:0] Wt, Kt, Sigma1, Sigma0;
    wire [6:0] round;
    wire processing;

    assign debug_a = a;
    assign debug_b = b;
    assign debug_c = c;
    assign debug_d = d;
    assign debug_e = e;
    assign debug_f = f;
    assign debug_g = g;
    assign debug_h = h;
    assign debug_Wt = Wt;
    assign debug_round = round;
    assign d_Sigma1 = Sigma1;
    assign d_Sigma0 = Sigma0;
    
    sha256_w_mem w_mem (
        .clk(clk),
        .rst(rst),
        .start(start),
        .block(block),
        .Wt(Wt)
    );

    sha256_core core (
        .clk(clk),
        .rst(rst),
        .start(start),
        .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h),
        .a_next(a_next), .b_next(b_next), .c_next(c_next), .d_next(d_next),
        .e_next(e_next), .f_next(f_next), .g_next(g_next), .h_next(h_next),
        .Wt(Wt),
        .Kt(Kt),
        .round(round),
        .processing(processing),
        .T1(T1), .T2(T2),
        .Sigma1(Sigma1), .Sigma0(Sigma0)
    );

    sha256_k_mem k_mem (
        .round(round),
        .Kt(Kt)
    );

    sha256_reg_update reg_update (
        .clk(clk),
        .rst(rst),
        .start(start),
        .processing(processing),
        .a_next(a_next), .b_next(b_next), .c_next(c_next), .d_next(d_next),
        .e_next(e_next), .f_next(f_next), .g_next(g_next), .h_next(h_next),
        .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h),
        .hash(hash),
        .done(done)
    );

endmodule

// Core SHA-256 computation module
module sha256_core (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [31:0] a, b, c, d, e, f, g, h,
    input wire [31:0] Wt,
    input wire [31:0] Kt,
    output reg [31:0] a_next, b_next, c_next, d_next, e_next, f_next, g_next, h_next,
    output reg [6:0] round,
    output reg processing,
    output reg [31:0] T1, T2,
    output reg [31:0] Sigma0, Sigma1
);

    wire [31:0] Ch, Maj;
   
    assign Ch = (e & f) ^ (~e & g);
    assign Maj = (a & b) ^ (a & c) ^ (b & c);
    // assign Sigma0 = ({a[6:0], a[31:7]} ^ {a[17:0], a[31:18]} ^ (a >> 3));
    // assign Sigma1 = ({e[16:0], e[31:17]} ^ {e[18:0], e[31:19]} ^ (e >> 10));
    
    function [31:0] right_rotate(input [31:0] value, input [4:0] bits);
        begin
            right_rotate = (value >> bits) | (value << (32 - bits));
        end
    endfunction

    // Calculating Sigma1 (S1) and Sigma0 (S0) as per the given formulas
    //assign Sigma1 = right_rotate(e, 6) ^ right_rotate(e, 11) ^ right_rotate(e, 25);
    //assign Sigma0 = right_rotate(a, 2) ^ right_rotate(a, 13) ^ right_rotate(a, 22);

    //assign T1 = h + Sigma1 + Ch + Kt + Wt;
    //assign T2 = Sigma0 + Maj;
    

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            round <= 7'd0;
            processing <= 1'b0;
        end else if (start) begin
            round <= 7'd0;
            processing <= 1'b1;
        end else if (processing) begin
            if (round == 7'd63) begin
                processing <= 1'b0;
            end else begin
                round <= round + 7'd1;
            end
        end
    end

    always @(*) begin
        if (processing) begin
            h_next = g;
            g_next = f;
            f_next = e;
            e_next = d + T1;
            d_next = c;
            c_next = b;
            b_next = a;
            a_next = T1 + T2;
            
            Sigma1 <= right_rotate(e, 6) ^ right_rotate(e, 11) ^ right_rotate(e, 25);
            Sigma0 <= right_rotate(a, 2) ^ right_rotate(a, 13) ^ right_rotate(a, 22);
            
            T1 <= h + Sigma1 + Ch + Kt + Wt;
            T2 <= Sigma0 + Maj;
        end else begin
            h_next = h;
            g_next = g;
            f_next = f;
            e_next = e;
            d_next = d;
            c_next = c;
            b_next = b;
            a_next = a;
            
            T1 <= T1;
            T2 <= T2;
          
        end
    end

endmodule


// W memory module
module sha256_w_mem (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [511:0] block,
    output reg [31:0] Wt
);
    reg [31:0] W [0:63];
    reg [6:0] internal_round;

    wire [31:0] s0, s1, next_W;

    // Right rotate function
    function [31:0] right_rotate(input [31:0] value, input [4:0] bits);
        right_rotate = (value >> bits) | (value << (32 - bits));
    endfunction

    // Indices for array access
    wire [5:0] idx_15 = (internal_round >= 15) ? internal_round - 6'd15 : 6'd0;
    wire [5:0] idx_2  = (internal_round >= 2) ? internal_round - 6'd2 : 6'd0;
    wire [5:0] idx_16 = (internal_round >= 16) ? internal_round - 6'd16 : 6'd0;
    wire [5:0] idx_7  = (internal_round >= 7) ? internal_round - 6'd7 : 6'd0;

    // Calculate s0 and s1
    assign s0 = right_rotate(W[idx_15], 7) ^ right_rotate(W[idx_15], 18) ^ (W[idx_15] >> 3);
    assign s1 = right_rotate(W[idx_2], 17) ^ right_rotate(W[idx_2], 19) ^ (W[idx_2] >> 10);

    // Calculate the next W value
    assign next_W = (internal_round >= 16) ? (W[idx_16] + s0 + W[idx_7] + s1) : W[internal_round];
    integer i;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            internal_round <= 0;
            Wt <= 0;
            
            for (i = 0; i < 64; i = i + 1) begin
                W[i] <= 32'd0;
            end
        end else if (start) begin
            internal_round <= 7'd1;
            // Load initial block values into W
            W[0] <= block[511:480];
            W[1] <= block[479:448];
            W[2] <= block[447:416];
            W[3] <= block[415:384];
            W[4] <= block[383:352];
            W[5] <= block[351:320];
            W[6] <= block[319:288];
            W[7] <= block[287:256];
            W[8] <= block[255:224];
            W[9] <= block[223:192];
            W[10] <= block[191:160];
            W[11] <= block[159:128];
            W[12] <= block[127:96];
            W[13] <= block[95:64];
            W[14] <= block[63:32];
            W[15] <= block[31:0];
            Wt <= block[511:480];
        end else if (internal_round < 64) begin
            W[internal_round] <= next_W;
            Wt <= next_W;
            internal_round <= internal_round + 1;
        end
    end
    
endmodule


// K constants memory module
module sha256_k_mem (
    input wire [6:0] round,
    output reg [31:0] Kt
);

    always @(*) begin
        case (round)
            7'd0:  Kt = 32'h428a2f98;
            7'd1:  Kt = 32'h71374491;
            7'd2:  Kt = 32'hb5c0fbcf;
            7'd3:  Kt = 32'he9b5dba5;
            7'd4:  Kt = 32'h3956c25b;
            7'd5:  Kt = 32'h59f111f1;
            7'd6:  Kt = 32'h923f82a4;
            7'd7:  Kt = 32'hab1c5ed5;
            7'd8:  Kt = 32'hd807aa98;
            7'd9:  Kt = 32'h12835b01;
            7'd10: Kt = 32'h243185be;
            7'd11: Kt = 32'h550c7dc3;
            7'd12: Kt = 32'h72be5d74;
            7'd13: Kt = 32'h80deb1fe;
            7'd14: Kt = 32'h9bdc06a7;
            7'd15: Kt = 32'hc19bf174;
            7'd16: Kt = 32'he49b69c1;
            7'd17: Kt = 32'hefbe4786;
            7'd18: Kt = 32'h0fc19dc6;
            7'd19: Kt = 32'h240ca1cc;
            7'd20: Kt = 32'h2de92c6f;
            7'd21: Kt = 32'h4a7484aa;
            7'd22: Kt = 32'h5cb0a9dc;
            7'd23: Kt = 32'h76f988da;
            7'd24: Kt = 32'h983e5152;
            7'd25: Kt = 32'ha831c66d;
            7'd26: Kt = 32'hb00327c8;
            7'd27: Kt = 32'hbf597fc7;
            7'd28: Kt = 32'hc6e00bf3;
            7'd29: Kt = 32'hd5a79147;
            7'd30: Kt = 32'h06ca6351;
            7'd31: Kt = 32'h14292967;
            7'd32: Kt = 32'h27b70a85;
            7'd33: Kt = 32'h2e1b2138;
            7'd34: Kt = 32'h4d2c6dfc;
            7'd35: Kt = 32'h53380d13;
            7'd36: Kt = 32'h650a7354;
            7'd37: Kt = 32'h766a0abb;
            7'd38: Kt = 32'h81c2c92e;
            7'd39: Kt = 32'h92722c85;
            7'd40: Kt = 32'ha2bfe8a1;
            7'd41: Kt = 32'ha81a664b;
            7'd42: Kt = 32'hc24b8b70;
            7'd43: Kt = 32'hc76c51a3;
            7'd44: Kt = 32'hd192e819;
            7'd45: Kt = 32'hd6990624;
            7'd46: Kt = 32'hf40e3585;
            7'd47: Kt = 32'h106aa070;
            7'd48: Kt = 32'h19a4c116;
            7'd49: Kt = 32'h1e376c08;
            7'd50: Kt = 32'h2748774c;
            7'd51: Kt = 32'h34b0bcb5;
            7'd52: Kt = 32'h391c0cb3;
            7'd53: Kt = 32'h4ed8aa4a;
            7'd54: Kt = 32'h5b9cca4f;
            7'd55: Kt = 32'h682e6ff3;
            7'd56: Kt = 32'h748f82ee;
            7'd57: Kt = 32'h78a5636f;
            7'd58: Kt = 32'h84c87814;
            7'd59: Kt = 32'h8cc70208;
            7'd60: Kt = 32'h90befffa;
            7'd61: Kt = 32'ha4506ceb;
            7'd62: Kt = 32'hbef9a3f7;
            7'd63: Kt = 32'hc67178f2;
            default: Kt = 32'h00000000;
        endcase
    end

endmodule

// Register update and hash output module
module sha256_reg_update (
    input wire clk,
    input wire rst,
    input wire start,
    input wire processing,
    input wire [31:0] a_next, b_next, c_next, d_next, e_next, f_next, g_next, h_next,
    output reg [31:0] a, b, c, d, e, f, g, h,
    output reg [255:0] hash,
    output reg done
);

    reg [31:0] H0, H1, H2, H3, H4, H5, H6, H7;
    reg started;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            H0 <= 32'h6a09e667;
            H1 <= 32'hbb67ae85;
            H2 <= 32'h3c6ef372;
            H3 <= 32'ha54ff53a;
            H4 <= 32'h510e527f;
            H5 <= 32'h9b05688c;
            H6 <= 32'h1f83d9ab;
            H7 <= 32'h5be0cd19;
            a <= 32'h6a09e667;
            b <= 32'hbb67ae85;
            c <= 32'h3c6ef372;
            d <= 32'ha54ff53a;
            e <= 32'h510e527f;
            f <= 32'h9b05688c;
            g <= 32'h1f83d9ab;
            h <= 32'h5be0cd19;
            hash <= 256'd0;
            done <= 1'b0;
        end else if (start) begin
            a <= H0;
            b <= H1;
            c <= H2;
            d <= H3;
            e <= H4;
            f <= H5;
            g <= H6;
            h <= H7;
            done <= 1'b0;
            started <= 1'b1;
        end else if (processing) begin
            a <= a_next;
            b <= b_next;
            c <= c_next;
            d <= d_next;
            e <= e_next;
            f <= f_next;
            g <= g_next;
            h <= h_next;
        end else if (!processing && !done && started) begin
            H0 <= H0 + a;
            H1 <= H1 + b;
            H2 <= H2 + c;
            H3 <= H3 + d;
            H4 <= H4 + e;
            H5 <= H5 + f;
            H6 <= H6 + g;
            H7 <= H7 + h;
            hash <= {H0 + a, H1 + b, H2 + c, H3 + d, H4 + e, H5 + f, H6 + g, H7 + h};
            done <= 1'b1;
        end
    end

endmodule