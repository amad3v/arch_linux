#!/usr/bin/env bash

echo "#------------#" 
echo "# run matlab #"
echo "#------------#"

# to activate nvidia
# in matlab terminal run
# opengl('save','hardware')
# then restart

# export MATLAB_JAVA="/usr/lib/jvm/java-8-openjdk/jre"
export MATLAB_LOG_DIR="/tmp"
export LD_PRELOAD="/usr/lib/libfreetype.so"
#export LD_PRELOAD=/usr/lib/libstdc++.so
#export LD_LIBRARY_PATH=/usr/lib/xorg/modules/dri/
# prime-run /home/amad3v/apps/matlab/bin/matlab -desktop
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'
export MATLABPATH="$MATLABPATH:/common/apps/mbeautifier:/common/matlab-drive/custom/"
#prime-run "/common/apps/matlab/r2022a/bin/matlab" -desktop #-nosoftwareopengl
prime-run "/common/apps/matlab/r2022b/bin/matlab" -desktop #-nosoftwareopengl

exit 0
