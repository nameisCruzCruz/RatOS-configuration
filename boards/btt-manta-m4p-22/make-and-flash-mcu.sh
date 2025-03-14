#!/bin/bash
# NOTE: This script ONLY WORKS if the board has already been flashed with klipper via SD card.

if [ "$EUID" -ne 0 ]
  then echo "ERROR: Please run as root"
  exit
fi

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
"$SCRIPT_DIR"/compile.sh
"$SCRIPT_DIR"/flash.sh
