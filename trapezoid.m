%{
    Programmer:    Sai Narayan
    Assessment:    Final Exam - Part 3 - trapezoid
    Date:          14 December 2022
    Description:   arcsin-Function

    Integrity Statement: I have completed this work with integrity. 
                        -- Sai Narayan 
                          (ssn5137)
%}  

function [I] = trapezoid(f,a,b,k,p)
I = 0;
interval_ab = b-a;
if k == 1
	I = (interval_ab/2)*(f(a) + f(b));
else
	for i = 1:2^(k-2)
		I = I + f(a+(2*i-1)*interval_ab/(2^(k-1)));
	end
	I = 0.5*p+(interval_ab/(2^(k-1)))*I;
end
end
