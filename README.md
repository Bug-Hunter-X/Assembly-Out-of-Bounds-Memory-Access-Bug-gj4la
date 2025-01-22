# Assembly Out-of-Bounds Memory Access Bug

This repository demonstrates a common error in assembly programming: out-of-bounds memory access.  The `bug.asm` file contains code that attempts to access an array using an index that is not validated, potentially leading to a segmentation fault or similar error.  The `bugSolution.asm` file presents a corrected version with proper bounds checking.

## Bug Description

The bug lies in the instruction that accesses memory.  It uses ECX as an index into an array, but doesn't verify that ECX is within the valid range of indices. If ECX exceeds the array bounds, a memory access violation occurs.

## Bug Solution

The solution incorporates bounds checking. Before accessing memory, it verifies that ECX is within the permissible range of indices. If it is not, the program takes appropriate action (such as handling the error or exiting gracefully).