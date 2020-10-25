#!/bin/#!/usr/bin/env bash
#
# this script generates a report of the files on the system that have the setuid permission turned on
# it is for the lab1 exeecise
# it uses the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files are sorted by their owner

# Task 1 for the exercise is to modify it to also display the 12 largest regular files in the system, sorted by their sizes
# The listing should
#    only have the file name, owner, and size of the 12 largest files
#    show the size in human friendly format
#    be displayed after the listing if setuid files
#   should have its own title, similar to how the setuid files listing has a title
# use the find command to generate the list of files with their sizes, with an error redirect to /dev/null
# use cut or awk to display only the output desired

echo "Setuid files:"
echo "============="
find / -type f -executable -prem -4000 -ls 2>/dev/null /sort -k 5
echo ""
#
# for the task, add
# commands to display a title
# commands to make list of the 12 biggest files
# sort/format whatever to diplay the list properly
