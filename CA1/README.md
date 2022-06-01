# Switch, Gate, and Expressions in Verilog
- This code was developed in October, 2015.

1. Generate a switch level description for a circuit with a and e inputs and y0 and y1 outputs, where
y0 = ~a & e, and y1 = a & e. We refer to this circuit as Primitive Binary Decoder (PBD). Use a
minimum number of NMOS and PMOS transistors. Use #(3, 4, 5) delay values for the NMOS
transistors and #(5, 6, 7) for the PMOS transistors. Use switch level inverts for complementing
the inputs where needed.
2. Generate a testbench for the PBD circuit of Part 1, apply test data and justify the results you
are getting. Explain X and Z values.
3. Describe the circuit of Part 1 using nand, nor, and not primitives. Adjust primitive gate delays
to make the delay of the gate level PBD circuit of this part as close as possible to the transistorbased circuit of Part 1.
4. Generate a testbench that instantiates the transistor-level PBD of Part 1 and the gate-level PBD
of Part 3. Test the two PBD descriptions simultaneously and explain the differences.
5. Describe the circuit of Part 1 using an assign statement. Adjust assign statement delays to
make the delay of this description as close as possible to the gate-level circuit.
6. Generate a testbench that instantiates the descriptions of Parts 1, 3, and 5. Test the three circuits
simultaneously and explain the differences.
7. Using several copies of PBD of Part 5 in a structural fashion, build a circuit for calculating
1/2n
, where n is a 3-bit integer. The result is a fixed point fractional number with eight total
number of bits, one integer bit and seven fractional bits.
8. Generate a testbench for the circuit of Part 7 and calculate its worst case delay
