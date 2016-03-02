function x = QuadSecRoot(f, a, b)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Problem 19, Chapter 3 - Shiv Toolsidass.
%
% funtion x = QuadSecRoot(f,a,b)
%
% Returns the approximate solution to f(x) = 0 on the interval [a,b]
% using the Quad-section Method as specified in the problem.
% The solution, x, will have a tolerance of 10^-6.
%
% Example: xi = QuadSecRoot(@cos,2^-5,0,3)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%f = @(x) cos(x);

tol = 10^-6; % specify tolerance as 10^-6
x = (b+a)/2; % if tolerance is bigger than interval length, return midpoint.

while abs(b-a) > tol % check to see if interval length is within tolerance

	% Since our goal is to divide up [a,b] into 4 equal intervals, imagine the intervals as follows:
	% |---|---|---|---|
	% a   m1 mid  m2  b

    mid = (a + b)/2; % find the midpoint
    m1 = (a + x)/2; % lower mid
    m2 = (x+b)/2;  % upper mid

    if f(mid) == 0 % check to see if you found the solution with mid
    	x = mid;
        break
    elseif f(m1) == 0 % check to see if you found the solution with m1
    	x = m1;
        break
    elseif f(m2) == 0 % check to see if you found the solution with m2
    	x = m2;
        break

    if sign(f(m2)) == sign(f(b)) % check the sign of the f(mid)
        b = m2; % replace b with the midpoint
    elseif sign(f(mid)) == sign(f(b)) % check the sign of the f(mid)
        b = mid; % replace b with the midpoint

    elseif sign(f(m1)) == sign(f(a))
    	a = m1;
    else 
    	a = mid;

    end

end

f = @(x) cos(x);
root = QuadSecRoot(f, 0, 5)