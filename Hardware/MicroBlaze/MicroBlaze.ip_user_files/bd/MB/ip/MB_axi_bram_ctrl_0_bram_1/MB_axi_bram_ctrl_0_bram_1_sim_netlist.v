// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Oct 22 19:04:02 2024
// Host        : DESKTOP-VANOK20 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MicroBlaze.gen/sources_1/bd/MB/ip/MB_axi_bram_ctrl_0_bram_1/MB_axi_bram_ctrl_0_bram_1_sim_netlist.v
// Design      : MB_axi_bram_ctrl_0_bram_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MB_axi_bram_ctrl_0_bram_1,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module MB_axi_bram_ctrl_0_bram_1
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "MB_axi_bram_ctrl_0_bram_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  MB_axi_bram_ctrl_0_bram_1_blk_mem_gen_v8_4_8 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59936)
`pragma protect data_block
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
aV51N8lYh9ch/yojA5rT3Qe6LyvIb8IOLsnMWcc=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
