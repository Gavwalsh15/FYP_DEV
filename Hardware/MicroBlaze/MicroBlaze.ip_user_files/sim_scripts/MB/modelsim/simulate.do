onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xilinx_vip -L xpm -L xil_defaultlib -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_15 -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_4 -L lib_srl_fifo_v1_0_4 -L axi_uartlite_v2_0_35 -L axi_bram_ctrl_v4_1_10 -L blk_mem_gen_v8_4_8 -L microblaze_v11_0_13 -L lmb_v10_v3_0_14 -L lmb_bram_if_cntlr_v4_0_24 -L mdm_v3_2_26 -L xlconstant_v1_1_9 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_31 -L axi_vip_v1_1_17 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.MB xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {MB.udo}

run 1000ns

quit -force
