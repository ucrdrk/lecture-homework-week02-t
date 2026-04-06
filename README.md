# Lecture Homework Week 02 - Tuesday

## Introduction

For this lecture homework, you will create a **D Flip-Flop**. This module is fairly straightforward; we will base our design on the concepts covered in the [Flip-Flop tutorial on NandLand](https://nandland.com/lesson-5-what-is-a-flip-flop/). 

A D Flip-Flop has two boolean inputs: the **clock** and a **data value (D)** to store. On the rising edge of the clock, the input $D$ is passed to the output $Q$. In SystemVerilog, we will implement this behavior using an `always` block.

Write your implementation of the D Flip-Flop in the `d_flip_flop.sv` file. The file contains a template where you will add your specific logic.

Additionally, we have provided a testbench to ensure your implementation works correctly. This same testbench is used by the Gradescope autograder; if your code passes locally, it should also pass on the autograder.

## Getting the Code

You are not required to write all the code from scratch. Instead, we have provided a scaffolded outline for you to complete.

As with the previous lecture homework, this assignment is hosted on GitHub. You will create your own repository using the assignment repository as a template. To do this:

1. Click on **"Use this template."**
2. Select **"Create a new repository."**
3. Give your repository a descriptive name.
4. Click **"Create repository."**

Once created, clone the repository to your local machine or open it in a GitHub Codespace to begin working.

## Writing the D Flip-Flop

Your first task is to write the logic for the D Flip-Flop. The template code is located in `d_flip_flop.sv`. Write your code beneath the following comment:

```verilog
// Put your implementation of a D Flip-Flop here
```

## Synthesizing

Before running the simulation, you must compile (synthesize) the code using `iverilog`. Run the following command in your terminal:

```sh
iverilog -o testbench -g2009 testbench.sv
```

This command generates a simulation executable named `testbench`.

## Running the Testbench

Run the simulation and observe the results. If your design is correct, you should see:

```sh
VCD info: dumpfile tb.vcd opened for output.
Tests Passed!
```

If the design is incorrect, the output will show:

```sh
VCD info: dumpfile tb.vcd opened for output.
Failed tests
```

If your tests are failing and you cannot identify the error, use **GTKWave** to inspect the waveforms stored in `tb.vcd`.

## What to Turn In

Submit your work by committing and pushing your changes to your GitHub repository. 

Finally, upload the assignment via **Gradescope**. When prompted, log in to GitHub, select your homework repository, and submit.