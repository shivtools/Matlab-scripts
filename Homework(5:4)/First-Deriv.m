function [yd] = FirstDeriv(x,y)
% Author: Shiv Toolsidass
% Input: accepts vectors x (x-coordinates) and y (y-coordinates)
% Output: yd  (vector with values of derivative at each point)

h = x(2)-x(1); % calculate h based on difference between x2 and x1

yd(1) = (-3*y(1) + 4*y(2) - y(3))/2*h; %Calculate first coordinate of yd based on three point forward difference

yd_length = length(x); %get length of yd vector (for for loop)