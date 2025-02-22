# VHDL Metastability Bug

This repository demonstrates a common metastability bug in VHDL code related to asynchronous reset handling. The bug involves improper synchronization of the reset signal with the clock, potentially leading to unpredictable behavior.  The solution involves synchronizing the reset signal using a flip-flop.

## Bug Description

The original code does not properly synchronize the `reset` signal with the clock. This can lead to metastability issues and unpredictable behavior, especially in high-speed designs.  When the `reset` signal changes asynchronously with the clock, the signal might be captured in an indeterminate state within the process, causing erratic operation.

## Solution

The solution synchronizes the `reset` signal using a flip-flop. This ensures that the reset signal is synchronized with the clock, mitigating the risk of metastability issues.

## How to reproduce the bug

1. Simulate the provided VHDL code (`bug.vhdl`).
2. Observe the behavior of the `data_out` signal during asynchronous `reset` transitions.
3. Compare the observed behavior to the expected behavior, noting any inconsistencies.

## How to fix the bug

1. Replace the `bug.vhdl` file with `bugSolution.vhdl`.
2. Observe the more stable and predictable behavior of the synchronized reset.
