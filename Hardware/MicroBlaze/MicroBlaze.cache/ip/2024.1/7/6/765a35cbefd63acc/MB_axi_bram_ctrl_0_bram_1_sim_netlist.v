// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Oct 22 19:04:02 2024
// Host        : DESKTOP-VANOK20 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MB_axi_bram_ctrl_0_bram_1_sim_netlist.v
// Design      : MB_axi_bram_ctrl_0_bram_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MB_axi_bram_ctrl_0_bram_1,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59888)
`pragma protect data_block
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
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
