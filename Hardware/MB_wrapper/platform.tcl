# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\gavwa\Desktop\Project\MB_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\gavwa\Desktop\Project\MB_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {MB_wrapper}\
-hw {C:\Users\gavwa\Desktop\Project\MicroBlaze\MB_wrapper.xsa}\
-out {C:/Users/gavwa/Desktop/Project}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {MB_wrapper}
platform generate -quick
platform generate
