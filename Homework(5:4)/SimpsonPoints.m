function I = SimpsonPoints(x,y)

	n = length(x);
	num_intervals = n-1;
	h = x(2)-x(1);
    I = 0;

	% Do integration by Simpson's 3/8 method if num_intervals%3 = 0
	if mod(num_intervals, 3) == 0
		for i = 1:n
			if i == 1 || i == n
				I = I + y(i);
            elseif mod(i,3) == 1
					I = I + 2*y(i);
			else
				I = I + 3*y(i);
			end
		end
		I = I*3*h/8;

	%If number of intervals in data points is one more than a number divisible by 3, 
	%integration in the first interval is done by the trapezoidal method and the 
	%rest of the intervals are done with composite Simpson's 3/8 method.

    elseif mod(num_intervals, 3) == 1
		I_trapezoidal = (y(1)+y(2))/2;
		for	i = 2:n
			if ((i == 2) || (i == n))
				I = I + y(i);
            elseif mod(i,3) == 2
				I = I + 2*y(i);
			else
				I = I + 3*y(i);
			end
		end
		I = I*3*h/8 + I_trapezoidal;

	%else the integration over the first two intervals is done with Simpson's 1/3 method
	%and integration over the rest of the intervals is done by composite Simpson's 3/8 method
	else
		I_simpson = ((x(2)-x(1))*(y(1)+4*y(2)+y(3)))/3;
		for i = 3:n
			if (i == 3) || (i == n)
				I = I + y(i);
            elseif mod(i,3) == 0
				I = I + 2*y(i);
			else 
				I = I + 3*y(i);
			end
		end
		I = (I*3*h/8) + I_simpson;

	end

end

