# Library Management System (Verilog)

## Overview
This project implements a simple digital Library Management System in Verilog HDL. It simulates issuing and returning a single book using sequential logic.

## Features
- Issue a book if available.
- Return an issued book.
- Prevent issuing an already issued book.
- Prevent returning a book that is already available.
- Includes a complete Verilog testbench.

## Files
- library_management.v
- library_management_tb.v
- README.md
- output.txt

## Tools Used
- Verilog HDL
- Visual Studio Code
- Icarus Verilog / ModelSim

## Compile

```bash
iverilog -o library library_management.v library_management_tb.v
```

## Run

```bash
vvp library
```

## Sample Output

```
Available=1 Issued=0
Available=0 Issued=1
Available=1 Issued=0
```

## Applications
- Digital resource management
- FSM and sequential logic learning
- FPGA-based educational projects