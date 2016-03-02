function [Xs, FXs, iact] = NewtonRootMod(Fun,FunDer,Xest,Err,imax)
% NewtonRoot finds the root of Fun = 0 near the point Xest using Newton's method.
% Input variables:
% Fun    Handle of a user-defined function that calculates Fun for a given x.
% FunDir Handle of a user-defined function that calculates the derivative
%        of Fun for a given x.
% Xest   Initial estimate of the solution.
% Err    Maximum error.
% imax   Maximum number of iterations
% Output variable:
% Xs     Solution

for i = 1:imax
    Xi = Xest - Fun(Xest)/FunDer(Xest);
    if abs((Xi - Xest)/Xest) < Err
        Xs = Xi;
        FXs = Fun(Xi);
        iact = i;
        break
    end
    Xest = Xi;
end
if i == imax
    fprintf('Solution was not obtained in %i iterations.\n',imax)
    Xs = ('No answer');    
end

function y = FunExample2(x)
y = 8 - 4.5*(x-sin(x));

function y = FunDerExample2(x)
y = -4.5 + 4.5*cos(x);

format long
[xSolution, f(xSolution), numIterations] = NewtonRootMod(@FunExample2, @FunDerExample2, 2, 0.0001, 10)