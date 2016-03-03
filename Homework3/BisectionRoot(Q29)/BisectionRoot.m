function x = BisectionRoot(f, tol, a, b)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% funtion x = BisectionMethod(f,tol)
%
% Returns the approximate solution to f(x) = 0 on the interval [a,b]
% using the Bisection Method.
% The solution, x, will have a tolerance of tol.
%
% Example: xi = BisectionMethod(@cos,2^-5,0,3)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%f = @(x) cos(x);
x = (b+a)/2; % if tolerance is bigger than interval length, return midpoint.

while abs(b-a) > tol % check to see if interval length is within tolerance

    x = (a + b)/2; % find the midpoint
    if f(x) == 0 % check to see if you found the solution
        break
    end
    if sign(f(x)) == sign(f(b)) % check the sign of the f(mid)
        b = x; % replace b with the midpoint
    else
        a = x; % if not same sign as be replace a with midpoint
    end

end

format long
%To be fed in in the command line: 
%x = 60; g =32.2; v= 50; h_q = 6.5; h_r = 7; y = h_r - h_q; tol = 10^-6;
%f = @(theta)(x*tan(theta))-(0.5*((x^2)*g)/((v^2)*(cos(theta)^2))) + h_q - y;
%answer = BisectionRoot(f, tol,0,pi/2)

% left to do - warning messages as problem specifies