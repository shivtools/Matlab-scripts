function x = QuadSecRoot(f, a, b)

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
tol = 10^-6; % specify tolerance as 10^-6
x = (b+a)/2; % if tolerance is bigger than interval length, return midpoint.

while(abs(b-a) > tol) % check to see if interval length is within tolerance
    % Since our goal is to divide up [a,b] into 4 equal intervals, imagine the intervals as follows:
    % |---|---|---|---|
    % a   m1 mid  m2  b
    x = (a+b)/2; %recalculate x using a and b
    tol = x*10^-6; %tolerance set to x_ns*10^-6
    
    mid = ((a + b)/2); % find the midpoint
    m1 = (a + mid)/2; % lower mid
    m2 = (mid+b)/2;  % upper mid

    if f(mid) == 0 % check to see if you found the solution with mid
        x = mid;
        break
    end
    
    if sign(f(m2)) ~= sign(f(b)) %if sign of f(m2) and f(b) are different then the solution is trapped in between these bounds
        a = m2; %set a to be m2
    elseif sign(f(mid)) ~= sign(f(m2)) %if sign of f(mid) and f(m2) are different then the solution is trapped in between these bounds
        a = mid; %set a to mid
        b = m2; %set b to m2
    elseif sign(f(m1)) ~= sign(f(mid)) %if sign of f(m1) and f(mid) are different then the solution is trapped in between these bounds
        a = m1; %set a to m1
        b = mid; %set b to mid
    else 
        b = m1; %else the bounds are between a and m1, so set b to m1
    end
    
end