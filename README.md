# Booth's Multiplication Algorithm
<p align="center"><img src="https://user-images.githubusercontent.com/87468443/125751908-9e291d89-ff33-48b5-b7d1-faf092c1d30f.png"></p>
<p align="center">FACULTY OF ENGINEERING</p>
<p align="center">SCHOOL OF ELECTRICAL ENGINEERING</p>
<p align="center">SKEL4273</p>
<p align="center">CAD WITH HDL</p>
<p align="center">SECTION 1</p>
<p align="center">GROUP 2: CAD NEWBIE</p>
<p align="center">LECTURER: DR. MUNIM AHMAD ZABIDI</p>
<p align="center">MILESTONE 6: GPLD PROJECT</p>
<p align="center"><img width="305" src="https://user-images.githubusercontent.com/87468443/125757578-a75178b1-5df5-4c32-8099-919b03e7282b.png"></p>

## Introduction
Our project is Booth's Multiplication Algorithm. Booth's Multiplication Algorithm is a multiplication algorithm that multiplies two signed binary numbers in efficient way. As in all multiplication schemes, booth algorithm requires examination of the multiplier bits and shifting of the partial product. Prior to the shifting, the multiplicand may be added to the partial product, subtracted from the partial product, or left unchanged according to following rules:
1.  The multiplicand is subtracted from the partial product upon encountering the first least significant 1 in a string of 1's in the multiplier. 
2.  The multiplicand is added to the partial product upon encountering the first 0 (provided that there was a previous 1) in a string of 0's in the multiplier.
3.  The partial product does not change when the multiplier bit is identical to the previous multiplier bit.

In designing the Booth's Multiplier, datapath unit and control unit are designed. The operation involved in datapath unit includes arithmetic shifting, addtion, subtraction and down counting. The control unit controls the activation of the Booth's Multiplier and it reads data from datapath unit too. There are three simples types of multiplication conducted in the project as shown in Table 1.
<p align="center"><img width="475" src="https://user-images.githubusercontent.com/87468443/125760960-8b44eeb9-7eea-4cde-9b48-901136e04d09.png"></p>
<p align="center">Table 1. Example of Two Signed Numbers' Multiplication.</p>

## Algorithmic Modelling Step
<p align="center"><img src="https://user-images.githubusercontent.com/87468443/125762093-681b03df-6bea-41a8-b3e3-0d6a805f2468.png"></p>
<p align="center">Figure 1. Algorithmic Flow Chart.</p>

## RTL Modelling Step
<p align="center"><img src="https://user-images.githubusercontent.com/87468443/125762572-da4d20b7-c23b-421e-9930-d97e166dfdc2.png"></p>
<p align="center">Figure 2. RTL Flow Chart.</p>

## RTL Design Step
#### Design of Datapath Unit (DU)
<p align="center"><img src="https://user-images.githubusercontent.com/87468443/125763616-ac5b146f-2097-461a-85e9-5503333536b2.png"></p>
<p align="center">Figure 3. Functional Block Diagram of Datapath Unit.</p>

#### Design of Control Unit (CU)
<p align="center"><img src="https://user-images.githubusercontent.com/87468443/125765713-34f75f10-39ae-4a56-be3d-31717d97c244.png"></p>
<p align="center">Figure 4. Functional Block Diagram of Control Unit.</p>

#### DU-CU Integration
<p align="center"><img src="https://user-images.githubusercontent.com/87468443/125766129-d191dce6-7528-498c-a21c-89d60e4823df.png"></p>
<p align="center">Figure 5. Input-output Diagram of Booth's Multiplier.</p>

## Testbench Result
#### (-6)x(+4)=(-24)
<p align="center"><img src="https://user-images.githubusercontent.com/87468443/125766596-1a930c70-cac1-4e11-9026-3c3ce4a6a990.png"></p>
<p align="center">Figure 6. Result Waveform of (-6)x(+4)=(-24).</p>
<p align="center"><img src="https://user-images.githubusercontent.com/87468443/125767371-248fbf4a-0dfa-4201-82ae-be3221b2fa89.png"></p>
<p align="center">Table 2. Operation Table of (-6)x(+4)=(-24).</p>

#### (+7)x(+7)=(+49)
<p align="center"><img src="https://user-images.githubusercontent.com/87468443/125767788-0eb1220a-bd0c-4f47-85f9-cef2d0c4a9fd.png"></p>
<p align="center">Figure 7. Result Waveform of (+7)x(+7)=(+49).</p>
<p align="center"><img src="https://user-images.githubusercontent.com/87468443/125767921-38eecd10-d8cd-4914-9b60-28f19baaf18e.png"></p>
<p align="center">Table 3. Operation Table of (+7)x(+7)=(+49).</p>

#### (-4)x(-4)=(+16)
<p align="center"><img src="https://user-images.githubusercontent.com/87468443/125768238-cb27af75-b8a6-426c-880e-f4a8437ceaaf.png"></p>
<p align="center">Figure 8. Result Waveform of (-4)x(-4)=(+16).</p>
<p align="center"><img src="https://user-images.githubusercontent.com/87468443/125768193-31db10ab-fe6c-4f2f-836f-f6ea2a72680b.png"></p>
<p align="center">Table 4. Operation Table of (-4)x(-4)=(+16).</p>
Figure 6 shows the output waveform of (-6)x(+4)=(-24). Figure 7 shows the output waveform of (+7)x(+7)=(+49). Figure 8 shows the output waveform of (-4)x(-4)=(+16). In these output waveforms, the similarity is that 'Dout' at 'done' equals to 1 is the final answer. Figure 1 shows that when 'n' becomes 0, 'AQ' at that state is the final answer. Figure 2 shows that 'done' euqals to 1 when 'count' equals to 1. Variables 'n', 'done' and 'count' are related to each other. Variables 'n' and 'count' are used in datapath unit. When 'n' becomes 0, 'count' is on to notify that the down counting is done. Signal of 'count' is then sent to the control unit to notify that the down counting is done. Hence, 'done' is on. Table 2 shows the operation table of (-6)x(+4)=(-24). 'AQ' at 'n' equals to 0 is the final answer. 'AQ' undergoes the operation of two's complement because the most significant bit of one indicates that the values is a negative number. The method used is to get the one's complment of the 'AQ' and add one to it. Table 3 shows the operation table of (+7)x(+7)=(+49). Table 4 shows the operation table of (-4)x(-4)=(+16). 'AQs' of these two operations need no extra calculation because their most significant bits are both 0 which indicate that the 'AQs' are both positive numbers. These operations tables are done by referring to algorithmic flow chart in Figure 1. In short, multiplication between two signed numbers can be done by using Booth's Multiplier.
