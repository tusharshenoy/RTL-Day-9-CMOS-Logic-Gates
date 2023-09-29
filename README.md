# RTL-Day-9-CMOS-Logic-Gates

## Table Of Contents
- [Problem Statement](#Problem-Statement)
- [Theory](#Theory)
- [CMOS Inverter Circuit](#CMOS-Inverter-Circuit)
- [CMOS OR Gate](#CMOS-OR-Gate)
- [CMOS AND Gate](#CMOS-AND-Gate)
- [CMOS NOR Gate](#CMOS-NOR-Gate)
- [CMOS XNOR Gate](#CMOS-XNOR-Gate)
- [Simulation Output](#Simulation-Output)
- [References](#References)

### Problem Statement: Implementing Logic Gates using Switch Level of Modelling.

### Theory: 
The switch level of modelling provides a level of abstraction between the logic and analog-transistor levels of abstraction. It describes the interconnection of transmission gates, which are abstractions of individual MOS and CMOS transistors.
The switch level transistors are modelled as being either on or off, conducting or not conducting. The values carried by the interconnections are abstracted from the whole range of analog voltages or currents to a small number of discrete values. These values are referred to as signal strengths.
Verilog also provides support for transistor level modelling. However, designers rarely use these days as the complexity of circuits has required them to move to higher levels of abstractions rather than use switch level modelling. Usually, the transistor level modelling is referred to model in hardware structures using transistor models with analog input and output signal values.
On the other hand, gate-level modelling refers to modelling hardware structures wing gate models with digital input and output signal values between these two modelling schemes are referred to as switch level modelling.
The transistors only exhibit digital behaviour and their input at the transistor level, and output signal values are only limited to digital values. Verilog uses a 4 value logic value system, so Verilog switch input and output signals can take any of the four 0, 1, Z, and X logic values.


### CMOS Inverter Circuit:

![image](https://github.com/tusharshenoy/RTL-Day-9-CMOS-Logic-Gates/assets/107348474/59d109af-5746-46c0-b831-40806cbe1658)

 
### CMOS OR Gate:
To implement the OR gate, just add the inverter at the output of the NOR gate. The CMOS OR gate is shown below.

![image](https://github.com/tusharshenoy/RTL-Day-9-CMOS-Logic-Gates/assets/107348474/bd0dcfc3-66d3-43b1-b4a0-5d3c4c844b29)

 
### CMOS AND Gate:
Similarly, by connecting the inverter at the output of the NAND gate, we can implement AND gate. The CMOS AND gate is shown below.

![image](https://github.com/tusharshenoy/RTL-Day-9-CMOS-Logic-Gates/assets/107348474/28af5c22-5eae-4bc7-87ba-a209826edc42)

 
### CMOS NOR Gate: 
 
For two input NOR gate, if A and B are the inputs then its output Y = (A+B)’.In the NMOS network, whenever there is an OR operation between the two variables then two NMOS transistors will get connected in parallel. And the output will be complement of it.The PMOS network will be the dual of the NMOS network. Therefore, in the PMOS network, the two PMOS transistors will get connected in series.

![image](https://github.com/tusharshenoy/RTL-Day-9-CMOS-Logic-Gates/assets/107348474/cd3667f1-c8b5-4ef9-822f-507adf1f7341)


### CMOS NAND Gate: 
For two input NAND gate, if A and B are the inputs then its output Y = (A.B)’.In NMOS network when we have AND operation between the two variables, then two NMOS transistors will get connected in series. And the output will be complement of it. The PMOS network is dual of the NMOS network. In the NMOS network, if two transistors are connected in series then in the PMOS network, the two PMOS transistors will get connected in parallel.

 ![image](https://github.com/tusharshenoy/RTL-Day-9-CMOS-Logic-Gates/assets/107348474/3a5c26c8-9dfd-4cb7-a806-5114893e78e1)


### CMOS XOR Gate: 

![image](https://github.com/tusharshenoy/RTL-Day-9-CMOS-Logic-Gates/assets/107348474/b81b1aab-c149-45db-adfd-5fbcf03ccd04)

 
### CMOS XNOR Gate: 
 
![image](https://github.com/tusharshenoy/RTL-Day-9-CMOS-Logic-Gates/assets/107348474/254d5c47-05fe-40b5-a6cd-6a5367ee4057)



### Simulation Output: 

![image](https://github.com/tusharshenoy/RTL-Day-9-CMOS-Logic-Gates/assets/107348474/2125658e-2a19-48b1-9a2e-13cf71044615)

### References
[1. CMOS Logic Gates](https://www.geeksforgeeks.org/cmos-logic-gate/)

[2. CMOS Logic Gates Explained](https://www.allaboutelectronics.org/cmos-logic-gates-explained/)
