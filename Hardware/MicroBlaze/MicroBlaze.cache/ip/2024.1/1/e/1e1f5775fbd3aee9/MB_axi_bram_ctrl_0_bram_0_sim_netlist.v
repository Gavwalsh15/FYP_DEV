// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Oct 19 13:52:21 2024
// Host        : DESKTOP-VANOK20 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MB_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : MB_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MB_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
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
  (* C_INIT_FILE = "MB_axi_bram_ctrl_0_bram_0.mem" *) 
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
