#!/bin/bash

# This script runs a set of Validation Cases on a Linux machine with a batch queuing system.
# See the file Validation/Common_Run_All.sh for more information.
export SVNROOT=`pwd`/../..
source $SVNROOT/Validation/Common_Run_All.sh

$QFDS $DEBUG $QUEUE -p 8 -d $INDIR Test_02.fds
$QFDS $DEBUG $QUEUE -p 8 -d $INDIR Test_03.fds
$QFDS $DEBUG $QUEUE -p 8 -d $INDIR Test_04.fds
$QFDS $DEBUG $QUEUE -p 8 -d $INDIR Test_05.fds
$QFDS $DEBUG $QUEUE -p 8 -d $INDIR Test_06.fds
$QFDS $DEBUG $QUEUE -p 8 -d $INDIR Test_22.fds
$QFDS $DEBUG $QUEUE -p 8 -d $INDIR Test_23.fds
$QFDS $DEBUG $QUEUE -p 8 -d $INDIR Test_24.fds
$QFDS $DEBUG $QUEUE -p 8 -d $INDIR Test_25.fds
