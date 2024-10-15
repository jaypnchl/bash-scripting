#!/bin/bash
for script in *.sh; do
   if [ ! -x "$script" ]; then
      chmod +x "$script"
      echo "Added execute permission to $script"
   fi
done
