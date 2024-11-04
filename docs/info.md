The result (out) is divided into two parts: tens (dec_bin) and units (unis_bin) in binary format, so they can be displayed on 7-segment displays. If the result is 0, the zero flag is activated. If there is an error (division by zero or negative remainder), the error flag is activated.

ALU_Displays Module
This module connects the ALU to the 7-segment displays and a display selection multiplexer. It takes the same inputs as the ALU (in1, in2, and op) and generates the error and zero signals.
Signals (select_disp, AE, BE, etc.) are generated to control which part of the number is shown on each display. A multiplexer uses the mclk signal as a selector to alternate between displays.

BCD Decoder Module
The BCDDecoder converts 4-bit binary values into the patterns needed to activate the segments of a 7-segment display. Each binary input represents a decimal number (0-9), and the decoder assigns signals (A to G) to form the numbers on the display.

Frequency Divider Module
This module divides the clock frequency (mclk) to generate slower clock signals (q_int1 and q_int2). The q_int1 signal is used in the multiplexer to alternate between tens and units on the displays.

Multiplex_BCD Decoder Module
The Multiplex_BCD Decoder uses a multiplexer to alternate between tens and units (J and K) on the display. It also includes an instance of the BCD Decoder that converts binary data to the necessary segment patterns for the display.

2-to-1 Multiplexer Module
Although not complete in the code, a 2-to-1 multiplexer takes J, K, and a selector (SEL) to alternate between the tens and units values based on the mclk clock signal.

General Operation
Operation in the ALU: The ALU performs the operation indicated by op and converts the result into tens and units.
Multiplexer and Decoding: The multiplexer alternates between tens and units to display the complete number on the 7-segment displays.
Frequency Control: The frequency divider adjusts the speed for display updates.
This structure facilitates the control of multiple displays with a single ALU, breaking down the operation into modular components.
