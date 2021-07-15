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
<p align="center">**Figure 1.** Algorithmic Flow Chart.</p>
