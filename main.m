%{
    Programmer:    Sai Narayan
    Assessment:    Final Exam - Part 3
    Date:          14 December 2022
    Description:   arcsin-Function

    Integrity Statement: I have completed this work with integrity. 
                        -- Sai Narayan 
                          (ssn5137)
%}  

clear, clc, close all

disp('Pifunc Output, [0,1]:')
[int, err, ~] = romberg(@pifunc, 0, 1, 1e-14)
disp('')
disp('Logderiv Output, [1,e]:')
[int, err, ier]=romberg(@logderiv, 1, exp(1), 1e-14)
disp('')
disp('Erfderiv Output, [0,1]:')
[int, err, ier]=romberg(@erfderiv, 0, 1, 1e-14)
disp('')
disp('Erfderiv Output, [0,3]:')
[int, err, ier]=romberg(@erfderiv, 0, 3, 1e-14)
