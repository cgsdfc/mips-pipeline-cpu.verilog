This is the classic MIPS R3000 pipeline processor implemented in
Verilog. Originally, the code was planned to minimal, handling
hazzles or data races as many as possible, but is not meant to `catch`
all possiblility leading to bad fortune. However, under greate testing
pressure of our school, many detections and bug-fixes took place and
the code became INCREDIBLY stable within the range of instructions it
supports. 

A brief introduction to the setting of our course design will surely
help you understand what this piece of code achieved, what are its 
limitations and how you can utilize it.

In the first place, the course carries out in `PROJECT X` form, where
`X` ranges from 0 to 8. About details of each project, please see the 
directory pdf. Project 0 to 3 primarily focused on drawing circuit 
diagram using a software named `Logisim` (logical circuit simulation)
which was quite out of date, as well as writing short programs in the
MIPS assembly. From Project 4 on, we revolved around implementing CPU 
with more and more complicated technique. Project 4 's main key is a
single-period CPU which executes each instruction in one clock tick.
Project 5 envolved to designing processor using pipeline to enlarge the 
throughput. Project 6 add multiplication and division with some byte
wise addressing instructions on top of Project 5. In Project 7 we started
to support exceptions and interrupts, while the last project gave us a 
chance to burn the soft core onto a intigrated circuit.

The author of this repo found his place in ONLY Project 5, which means the
code ONLY support a reduced set of MIPS R3000 instructions without CP0 and
other interrupt's facilities. From this perspective, the code seems to
appear in a non-completed state. However, the main point here is to demonstrate
foundamentally how the pipeline works and how to solve hazzles and data races
with stalls and bypasses, 2 basic techniques introduced in most undergraduate
text books. As an effort towards good modularity, the code clearly divided
functionalities into Verilog modules, making it easier to understand.

One last word: apart from the code(I mean the pipeline core), you will find
many other materials of this field in my following uploading, including text
book, example code with docs, instruction set specification (in both English
and Chinese) and mostly importantly, the test data, which generally comes in 
3 files: a .txt hex code version for input, a .asm assembly version for
debug ease and a .out for correct output to check against. What's more, an enhanced
Mars is also provided which greatly reduces human power in term of regression 
test and bug-fixing. It prints the effect of each executed instruction in the
console. Another debug tool is an inspect module which produces time-space
diagram of the execution process happening inside the CPU. One can look closely
at the diagram to reveal some possible RAW data races to see whether bugs
arose from failing to handle them well.

The code is currently placed in the public domain without any liscen.

