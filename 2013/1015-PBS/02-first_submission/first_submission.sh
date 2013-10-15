#!/bin/env bash
#PBS -N first_submission
#PBS -j eo -e ${HOME}/logs/first_submission.log
#PBS -V
#PBS -S /bin/bash
#PBS -l mem=400MB,walltime=00:01:00
#PBS -q high_throughput
#PBS -m n

echo "This is a simple submission script for PBS"
echo "It is requesting, in order: "
echo "1.  To get the name 'first_submission'"
echo "2.  To join the output and error logs."
echo "4.  To receive the shell environment from the calling host."
echo "5.  To use 400 megs of ram and 1 minute of CPU time."
echo "6.  And to enter the high_throughput queue."
echo "7.  I don't want any emails from pbs."

echo "Find out the executing host:"
uname -a
echo "Find out the current working directory:"
pwd
echo "Find out if any PBS specific variables are set:"
env | grep "^PBS"
