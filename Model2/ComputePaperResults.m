%Copyright (c) 2022 Namya Mehan, Ethan Dhanraj, Abdul El-Rahwan, Simon Emil Opalka, Tony Fan, Akil Hamilton, Akshay Mathews Jacob, Rahul Anthony Sundarrajan, Bryan Widjaja, Mostafa Ayesh, and Claudio Menghi

%Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
%The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

%THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


clear
clc

load('Model2_Scenario1_Faulty.mat')

disp('Model2_Scenario1_Faulty');

fprintf('Number of falsified runs %f (over 50)  \n',sum([resultsModel2Scenario1Faulty.run.falsified]));

fprintf('Average Number of Iterations %f \n',mean(nonzeros([resultsModel2Scenario1Faulty.run.nTests].*[resultsModel2Scenario1Faulty.run.falsified])));

fprintf('Median Number of Iterations %f \n',median(nonzeros([resultsModel2Scenario1Faulty.run.nTests].*[resultsModel2Scenario1Faulty.run.falsified])));


load('Model2_Scenario1_Correct.mat')

disp('Model2_Scenario1_Correct');

fprintf('Number of falsified runs %f (over 50)  \n',sum([resultsModel2Scenario1Correct.run.falsified]));

fprintf('Average Number of Iterations %f \n',mean(nonzeros([resultsModel2Scenario1Correct.run.nTests].*[resultsModel2Scenario1Correct.run.falsified])));

fprintf('Median Number of Iterations %f \n',median(nonzeros([resultsModel2Scenario1Correct.run.nTests].*[resultsModel2Scenario1Correct.run.falsified])));


load('Model2_Scenario2_Faulty.mat')

disp('Model2_Scenario2_Faulty');

fprintf('Number of falsified runs %f (over 50)  \n',sum([resultsModel2Scenario2Faulty.run.falsified]));

fprintf('Average Number of Iterations %f \n',mean(nonzeros([resultsModel2Scenario2Faulty.run.nTests].*[resultsModel2Scenario2Faulty.run.falsified])));

fprintf('Median Number of Iterations %f \n',median(nonzeros([resultsModel2Scenario2Faulty.run.nTests].*[resultsModel2Scenario2Faulty.run.falsified])));



load('Model2_Scenario2_Correct.mat')

disp('Model2_Scenario2_Correct');

fprintf('Number of falsified runs  %f (over 50) \n',sum([resultsModel2Scenario2Correct.run.falsified]));

fprintf('Average Number of Iterations %f \n',mean(nonzeros([resultsModel2Scenario2Correct.run.nTests].*[resultsModel2Scenario2Correct.run.falsified])));

fprintf('Median Number of Iterations %f \n',median(nonzeros([resultsModel2Scenario2Correct.run.nTests].*[resultsModel2Scenario2Correct.run.falsified])));

