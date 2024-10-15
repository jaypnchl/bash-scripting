#!/bin/bash
set -u

directory=$1
size=$(du -sh "$directory")
echo "Total size of $directory: $size"
