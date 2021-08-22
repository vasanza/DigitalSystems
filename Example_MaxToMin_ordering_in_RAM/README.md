# ⭐⭐⭐⭐⭐ Maximum to minimum ordering of values in #RAM memory using #FPGA
The following functional partition, which includes a Machine Sequential Synchronous (MSS), must perform a sorting of 255 values from Highest to Lowest. The entry of these 8-bit values must be done one by one, these values are entered through the "Data" port, while the data is being entered, the MSS sets high the "WritingData" output, indicating that this process is being executed and it will not end until the 255 values are completed. The ordering of the previously entered numbers should be done from highest to lowest, for which it is recommended to use the counter_up "j" and counter_up "i" in the search and comparison process. It is requested:
- Perform the functional partitioning
- Draw the ASM diagram of the MSS controller.
- Create in Quartus the Block diagram Schematic file
- Simulate the operation of the complete system in the VWF file.

# Functional Partition:
![image](https://user-images.githubusercontent.com/12642226/130372880-179d61c9-0d64-4623-b9e6-233446156095.png)

# ASM Diagram:
- ![image](https://user-images.githubusercontent.com/12642226/130372886-9b3ee2f0-4486-48f9-96bb-77d07b2fe351.png)

# Block diagram Schematic file (BDF):
![Quartus2](https://user-images.githubusercontent.com/12642226/130372907-820e6a1d-fa27-4751-bdf6-de1df0f685a3.PNG)

# Vector Waveform File (VWF):
- ![vwf](https://user-images.githubusercontent.com/12642226/130372961-8aac29bf-e882-4bc3-ab56-beab9b6a8825.png)

# Read the complete problem:
- https://vasanza.blogspot.com/2021/02/solucion-evaluacion-sistemas-digitales.html

# Related work:
- https://vasanza.blogspot.com/2021/07/maximum-number-finder-and-repetition.html
- https://vasanza.blogspot.com/2021/02/solucion-evaluacion-sistemas-digitales_17.html
 
# IDE
- Quartus Prime 17.0.0 Build 595 04/25/2017 SJ Standard Edition

# DEVICE
- FPGA Cyclone V SE 5CSEBA6U23I7

# HARDWARE TERASIC
- DE10NANO
- DE10STANDARD

# CLONE
- git status
- git clone https://github.com/vasanza/MSI_VHDL.git

# SWITCHED TO BRANCH
- git branch -a
- git checkout NameBranch

# New Branch
- git checkout -b NameBranch

# PUSH
- git pull origin NameBranch
- git status
- git add .
- git status
- git commit -m "message"
- git push origin NameBrach
