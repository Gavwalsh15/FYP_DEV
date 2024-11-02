# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\gavwa\Desktop\Workin_Dir\Embedded_Code\Uart_system\_ide\scripts\debugger_uart-default_1.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\gavwa\Desktop\Workin_Dir\Embedded_Code\Uart_system\_ide\scripts\debugger_uart-default_1.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183794896A" && level==0 && jtag_device_ctx=="jsn-Basys3-210183794896A-0362d093-0"}
fpga -file C:/Users/gavwa/Desktop/Workin_Dir/Embedded_Code/Uart/_ide/bitstream/MB_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/gavwa/Desktop/Workin_Dir/Embedded_Code/MB_wrapper/export/MB_wrapper/hw/MB_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/gavwa/Desktop/Workin_Dir/Embedded_Code/Uart/Debug/Uart.elf
bpadd -addr &main
