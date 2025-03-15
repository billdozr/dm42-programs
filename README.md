# dm42-programs
SwissMicros DM42 compatible programs

## Overview
This repository contains programs compatible with the SwissMicros DM42/DM42n calculator thar runs Free42. Free42 is based on a decimal floating-point math library and IEEE 754-2008 quadruple precision decimal floating-point, encoding numbers in 16 bytes and giving 34 decimal places of precision with exponents ranging from -6143 to +6144.

## Prerequisites
Before running the programs on DM42/DM42n in this repository, you need to install the txt2raw utility to encode the source files:

1. Download the txt2raw utility from the Free42 website: https://thomasokken.com/free42/ and make sure it's on your PATH
2. Look for the `raw2txt, txt2raw` section on the page
3. Download the appropriate version for your operating system
4. Make sure the utility is in your system PATH or in the same directory as the encode.sh script

## Usage
The `encode.sh` script in this repository helps convert text-based program files (*.free42) to the raw format needed by the DM42 calculator:

```bash
./encode.sh src/program.free42
```

This will:
1. Convert the source file to raw format using the txt2raw utility
2. Place the resulting .raw file in the out/ directory
3. The raw file can then be transferred to your DM42/DM42n calculator or the Free42 - HP-42S Calculator Simulator

## File Structure
- `encode.sh`: Script to convert Free42 text files to raw format
- `out/`: Directory where converted raw files are stored
