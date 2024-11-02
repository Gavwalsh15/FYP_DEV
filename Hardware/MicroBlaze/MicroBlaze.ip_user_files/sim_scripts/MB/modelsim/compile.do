vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_15
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_pkg_v1_0_4
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_4
vlib modelsim_lib/msim/axi_uartlite_v2_0_35
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_10
vlib modelsim_lib/msim/blk_mem_gen_v8_4_8
vlib modelsim_lib/msim/microblaze_v11_0_13
vlib modelsim_lib/msim/lmb_v10_v3_0_14
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_24
vlib modelsim_lib/msim/mdm_v3_2_26
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_31
vlib modelsim_lib/msim/axi_vip_v1_1_17

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 modelsim_lib/msim/proc_sys_reset_v5_0_15
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_4 modelsim_lib/msim/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 modelsim_lib/msim/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_35 modelsim_lib/msim/axi_uartlite_v2_0_35
vmap axi_bram_ctrl_v4_1_10 modelsim_lib/msim/axi_bram_ctrl_v4_1_10
vmap blk_mem_gen_v8_4_8 modelsim_lib/msim/blk_mem_gen_v8_4_8
vmap microblaze_v11_0_13 modelsim_lib/msim/microblaze_v11_0_13
vmap lmb_v10_v3_0_14 modelsim_lib/msim/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_24 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_24
vmap mdm_v3_2_26 modelsim_lib/msim/mdm_v3_2_26
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 modelsim_lib/msim/axi_register_slice_v2_1_31
vmap axi_vip_v1_1_17 modelsim_lib/msim/axi_vip_v1_1_17

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_clk_wiz_0_0/MB_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/MB/ip/MB_clk_wiz_0_0/MB_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/MB/ip/MB_rst_clk_wiz_0_100M_0/sim/MB_rst_clk_wiz_0_100M_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_4  -93  \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4  -93  \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_35  -93  \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/2959/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/MB/ip/MB_axi_uartlite_0_0/sim/MB_axi_uartlite_0_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_10  -93  \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/14fa/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/MB/ip/MB_axi_bram_ctrl_0_1/sim/MB_axi_bram_ctrl_0_1.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_axi_bram_ctrl_0_bram_1/sim/MB_axi_bram_ctrl_0_bram_1.v" \

vcom -work microblaze_v11_0_13  -93  \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/aa1c/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/MB/ip/MB_microblaze_0_5/sim/MB_microblaze_0_5.vhd" \

vcom -work lmb_v10_v3_0_14  -93  \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/MB/ip/MB_dlmb_v10_7/sim/MB_dlmb_v10_7.vhd" \
"../../../bd/MB/ip/MB_ilmb_v10_7/sim/MB_ilmb_v10_7.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_24  -93  \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3eb2/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/MB/ip/MB_dlmb_bram_if_cntlr_7/sim/MB_dlmb_bram_if_cntlr_7.vhd" \
"../../../bd/MB/ip/MB_ilmb_bram_if_cntlr_7/sim/MB_ilmb_bram_if_cntlr_7.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_lmb_bram_7/sim/MB_lmb_bram_7.v" \

vcom -work mdm_v3_2_26  -93  \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/feb7/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/MB/ip/MB_mdm_1_5/sim/MB_mdm_1_5.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/sim/bd_0186.v" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_0/sim/bd_0186_one_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_1/sim/bd_0186_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_2/sim/bd_0186_arsw_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_3/sim/bd_0186_rsw_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_4/sim/bd_0186_awsw_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_5/sim/bd_0186_wsw_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_6/sim/bd_0186_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/98d8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_7/sim/bd_0186_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_8/sim/bd_0186_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/a950/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_9/sim/bd_0186_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_10/sim/bd_0186_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_11/sim/bd_0186_sarn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_12/sim/bd_0186_srn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_13/sim/bd_0186_sawn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_14/sim/bd_0186_swn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_15/sim/bd_0186_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_16/sim/bd_0186_m00s2a_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_17/sim/bd_0186_m00arn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_18/sim/bd_0186_m00rn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_19/sim/bd_0186_m00awn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_20/sim/bd_0186_m00wn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_21/sim/bd_0186_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/1f04/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_22/sim/bd_0186_m00e_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_23/sim/bd_0186_m01s2a_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_24/sim/bd_0186_m01arn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_25/sim/bd_0186_m01rn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_26/sim/bd_0186_m01awn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_27/sim/bd_0186_m01wn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_28/sim/bd_0186_m01bn_0.sv" \
"../../../bd/MB/ip/MB_axi_smc_2/bd_0/ip/ip_29/sim/bd_0186_m01e_0.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -mfcu  "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/3242" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/f0b6/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/c783/hdl/verilog" "+incdir+../../../../MicroBlaze.gen/sources_1/bd/MB/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/MB/ip/MB_axi_smc_2/sim/MB_axi_smc_2.v" \
"../../../bd/MB/ip/MB_hello_world_writer_0_4/sim/MB_hello_world_writer_0_4.v" \
"../../../bd/MB/sim/MB.v" \

vlog -work xil_defaultlib \
"glbl.v"

