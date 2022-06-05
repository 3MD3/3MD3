%Copyright (c) 2022 Namya Mehan, Ethan Dhanraj, Abdul El-Rahwan, Simon Emil Opalka, Tony Fan, Akil Hamilton, Akshay Mathews Jacob, Rahul Anthony Sundarrajan, Bryan Widjaja, Mostafa Ayesh, and Claudio Menghi

%Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
%The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

%THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


%staliro testing pacemaker model 
%group 1
warning('off');
close all;
clear;

global debug;
debug = 1;
model = 'Model2_Scenario1_Faulty';
%model = 'sldemo_autotrans_mod01';
init_cond = []; %initial conditions for the model
phi = '[](ventAmplitudeLowerThan5V)';

preds(1).str='ventAmplitudeLowerThan5V';
preds(1).A=1;
preds(1).b= 100;

% the value of the mode are generated between 1,6. The model assign each value in [1,2) to 1 etc 
input_range = [1 5; 1 6];

cp_array=[3 ; 2];%contour points, one at the beginning, middle, and end

time=15; %runtime for a single test run

opt=staliro_options();
opt.runs=50; %number of times to run
opt.optimization_solver = 'UR_Taliro';  %uniform random distribution
opt.interpolationtype = {'pchip','pconst'}; %cubic interpolation function (smooth change between points)

[resultsModel2Scenario1Faulty,history,opt]=staliro(model,init_cond,input_range,cp_array,phi,preds,time,opt);
save('Model2_Scenario1_Faulty');

model = 'Model2_Scenario1_Correct';
[resultsModel2Scenario1Correct,history,opt]=staliro(model,init_cond,input_range,cp_array,phi,preds,time,opt);
save('Model2_Scenario1_Correct');
