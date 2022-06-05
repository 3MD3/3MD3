## Simulink® Models for a Simple Controller of a Pacemaker Device
#### (Benchmark Proposal)

This repository consists of two Simulink® models for the design of a simple controller of a pacemaker device. The models and requirements were developed as a part of the elective course, "SFWRENG 3MD3 - Safe Software-Intensive Medical Devices”, provided at McMaster University (Canada) for the 2021-22 academic year. A replication package folder for both Simulink® Stateflow models is included in this repository, titled as "ReplicationPackage.zip". 

The controllers were deployed on a FRDM-K64F microcontroller. A sample video can be found here:

### Requirements 
* MATLAB/Simulink® (R2020a and later) 
* Stateflow®
* DSP Toolbox
* S-Taliro Matlab Toolbox ([Download](https://www.assembla.com/spaces/s-taliro_public/subversion/source/HEAD/trunk))
  
### File Download and Description 
 * The file *ReplicationPackage.zip* consists of two folders, *Model1* and *Model2*. The models describe different approaches to the design of a pacemaker controller. 
 * Falsification-based testing was conducted on both proposed models with different requirements. The failing and the corrected models are included in the attached replication package. 
 * To successfully replicate the experiments, S-TaLiRo <sup>1 </sup> Matlab Toolbox must be installed
 * To replicate the experiments open the folder Model1 and Model2 and run the scripts *Scenario1* and *Scenario2* 
  
### Credits and Acknowledgment 

The models included were prepared by two student groups as a part of the SFWRENG 3MD3 course:

Model 1: Akil Hamilton, Ethan Dhanraj, Namya Mehan, Rahul Anthony Sundarrajan 

  Model 2: Abdul El-Rahwan, Akshay Mathews Jacob, Bryan Widjaja, Simon Emil Opalka, Tony
Fan

Teaching Assistant: Mostafa Ayesh

  Professor:  Claudio Menghi
  
We also thank Alan Wassyng, Guy Meyer, Michael Kehinde, for that preparing and improving the
pacemaker assignment of the 3MD3 course over the years. 
  

  
### Copyright

Copyright (c) 2022 Namya Mehan, Ethan Dhanraj, Abdul El-Rahwan, Simon Emil Opalka, Tony Fan, Akil Hamilton, Akshay Mathews Jacob, Rahul Anthony Sundarrajan, Bryan Widjaja, Mostafa Ayesh, and Claudio Menghi

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
