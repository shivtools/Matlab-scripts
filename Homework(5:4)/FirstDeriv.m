function [yd] = FirstDeriv(x,y)
% Author: Shiv Toolsidass
% Input: accepts vectors x (x-coordinates) and y (y-coordinates)
% Output: yd  (vector with values of derivative at each point)

h = x(2)-x(1); % calculate h based on difference between x2 and x1

yd(1) = (-3*y(1) + 4*y(2) - y(3))/2*h; %Calculate first coordinate of yd based on three point forward difference

yd_length = length(x); %get length of yd vector (for for loop)

%iterate from index 2 till yd_n-1 and calculate derivative using two point
%central difference formula
for i = 2: yd_length-1
    yd(i) = (y(i+1)-y(i-1))/2;
end

%calculate last derivative using three point backward difference formula
yd(yd_length) = (y(yd_length-2)-4*y(yd_length-1)+3*(yd_length))/(2*h);

end



    

