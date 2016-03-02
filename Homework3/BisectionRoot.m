function x = BisectionMethod(f, tol, a, b)
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
f = @(theta)x*tan(theta)-(0.5*((60^2)*32.2)/((50^2)*(cos(theta)^2))) + 6.5;
tol = 10^-6;
answer = BisectionMethod(f, tol,0,90)

% left to do - warning messages as problem specifies