#!/bin/bash
# CALL FMASK WHILE TAKING CARE OF THE ENVIRONMENTAL VARIABLES
echo "Calling fmask 4 ..."

XAPPLRESDIR=/usr/local/MATLAB/MATLAB_Runtime/v95/X11/app-defaults
export LD_LIBRARY_PATH="/lib:/usr/lib:/usr/local/lib"
LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/local/MATLAB/MATLAB_Runtime/v95/runtime/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v95/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v95/sys/os/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v95/sys/opengl/lib/glnxa64"
#export PATH=$PATH:$LD_LIBRARY_PATH

/usr/GERS/Fmask_4_0/application/Fmask_4_0


