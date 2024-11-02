# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\gavwa\Desktop\Workin_Dir\Embedded_Code\MB_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\gavwa\Desktop\Workin_Dir\Embedded_Code\MB_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {MB_wrapper}\
-hw {C:\Users\gavwa\Desktop\Workin_Dir\Hardware\MicroBlaze\MB_wrapper.xsa}\
-out {C:/Users/gavwa/Desktop/Workin_Dir/Embedded_Code}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {MB_wrapper}
platform generate -quick
platform generate
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform generate
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform generate -domains 
platform active {MB_wrapper}
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform generate -domains 
platform active {MB_wrapper}
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform active {MB_wrapper}
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform generate
platform active {MB_wrapper}
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/gavwa/Desktop/Workin_Dir/Hardware/MicroBlaze/MB_wrapper.xsa}
