function [yd] = FirstDerivUnique(x,y)
% Author: Shiv Toolsidass
% Differentiation based on second order lagrange polynomials
% Input: accepts vectors x (x-coordinates) and y (y-coordinates)
% Output: yd  (vector with values of derivative at each point)

yd(1) = (((2*x(1)-x(2)-x(3))/(x(1)-x(2))*(x(1)-x(3)))*y(1)) + ((x(1)-x(3))/((x(2)-x(1))*(x(2)-x(3))))*y(2); %Calculate first coordinate of yd based on 8.35

yd_n = length(x); %get length of yd vector (for for loop)

%iterate from index 2 till yd_n-1 and calculate derivative using Formula
%8.36
for i = 2: yd_n-1
    yd(i) = (((x(i)-x(i+1))/(x(i-1)-x(i)))*y(i-1)) + (((2*x(i)-x(i-1)-x(i+1))/(x(i)-x(i-1))*(x(i)-x(i+1)))*y(i));
end

%calculate last derivative using Formula 8.37
yd(yd_n) = (((x(yd_n)-x(yd_n-1))/((x(yd_n-2)-x(yd_n-1))*(x(yd_n-2)-x(yd_n))))*y(yd_n-2)) + (((x(yd_n)-x(yd_n-2))/((x(yd_n-1)-x(yd_n-2))*(x(yd_n-1)-x(yd_n))))*y(yd_n-1));
end
