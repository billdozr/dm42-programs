# dm42-programs
SwissMicros DM42 compatible programs

## Overview
This repository contains programs compatible with the SwissMicros DM42/DM42n calculator that runs Free42. Free42 is based on a decimal floating-point math library and IEEE 754-2008 quadruple precision decimal floating-point, encoding numbers in 16 bytes and giving 34 decimal places of precision with exponents ranging from -6143 to +6144.

## Prerequisites
Before running the programs on DM42/DM42n in this repository, you need to install the txt2raw utility to encode the source files:

1. Download the txt2raw and raw2txt utilities from the Free42 website: https://thomasokken.com/free42/ (under the `raw2txt, txt2raw` section) and make sure they're on your PATH

## Usage

### Encoding (Text to Raw)
The `encode.sh` script converts text-based program files (*.free42) to the raw format needed by the DM42 calculator:

```bash
./encode.sh src/program.free42
```

This will:
1. Convert the source file to raw format using the txt2raw utility
2. Place the resulting .raw file in the raw/ directory
3. The raw file can then be transferred to your DM42/DM42n calculator or the Free42 - HP-42S Calculator Simulator

### Decoding (Raw to Text)
The `decode.sh` script converts raw program files back to text format for editing:

```bash
./decode.sh raw/program.raw
```

This will:
1. Convert the raw file to text format using the raw2txt utility
2. Place the resulting .free42 file in the src/ directory
3. The text file can then be edited with any text editor

## File Structure
- `encode.sh`: Script to convert Free42 text files to raw format
- `decode.sh`: Script to convert raw files back to Free42 text format
- `src/`: Directory where source text files (*.free42) are stored
- `raw/`: Directory where converted raw files are stored
