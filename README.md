**Name : SUBHASHINI.B**  
**Reg. No: 212223040211**   

## Aim:
To design and simulate a traffic light controller for an intersection of three main roads, where each road has equal priority. The controller should regulate the traffic flow efficiently, ensuring safety and smooth movement of vehicles while diverting the traffic to path 1 direction and disabling control in other directions.
## Apparatus Required:
1.	Hardware Description Language (HDL) simulation environment such as Verilog or VHDL.
2.	Simulation software like ModelSim for testing and verification.
3.	FPGA development board (optional) for hardware implementation.
## Procedure:
1.	Define the State Machine
2.	Implement the State Machine in HDL
3.	Simulate the Design
4.	Test the Design
5.	Optimize and Refine

## State Table :
•	To define the states, inputs, outputs, and state transitions. 
•	Let's denote the three main roads as MR1, MR2, and MR3. 
•	Each road can have three possible states for its traffic light: Red, Yellow, and Green. Here's the state table:
   
•	Each row represents a state transition along with the corresponding outputs for each main road.
•	The "Counter" column indicates the counts for each state before transitioning to the next state.
•	The "Current State" column represents the current state of the state machine.
•	The "Next State" column indicates the state to transition to after completing the counts.
•	The "MR1", "MR2", and "MR3" columns specify the traffic light states for each main road in the current state.
•	"Red", "Yellow", and "Green" denote the states of the traffic lights.
•	The counter counts from 0 to 9, where each count corresponds to one clock cycle.
## Code: 

![image](https://github.com/RHUDHRESH/Hackathon/assets/74451692/5b696e19-ec79-407c-a4f6-2474894e9355)

![image](https://github.com/RHUDHRESH/Hackathon/assets/74451692/a7afabae-6fd4-42d5-ab22-46a651b35cf9)

![image](https://github.com/RHUDHRESH/Hackathon/assets/74451692/0c7dec64-c053-4d4d-b0e6-11ee8b8372c7)

![image](https://github.com/RHUDHRESH/Hackathon/assets/74451692/64f05004-b8f7-4e87-8cfb-23ad9ad1fb95)

![image](https://github.com/RHUDHRESH/Hackathon/assets/74451692/b7523f53-7afa-4f8b-a824-da6c53e0e31f)







## RTL Schematic View

![image](https://github.com/RHUDHRESH/Hackathon/assets/74451692/1bc00223-ea16-4533-ac48-93f3e65db698)

 


## Output Waveforms


 ![image](https://github.com/RHUDHRESH/Hackathon/assets/74451692/c9e5cc3f-51ec-4cb0-abcc-1e334c8742d9)



