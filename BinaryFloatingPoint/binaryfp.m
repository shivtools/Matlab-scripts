## Author: Shiv Toolsidass
## Goal: Find the binary floating point representation of a given number.

%N = input('Please provide a number to convert into its binary floating point representation: ');

decToBinFloat(55.6)
decToBinFloat(2143.75)
decToBinFloat(0.00843)

function decToBinFloat(N)
	format long
	lowerExponent = floor(log2(N)); %find floor of power of 2 that is less than N
	mantissa = (N/(2^lowerExponent)); % gives 1.dddd where dddd is mantissa
	fprintf('Binary floating point representation of %f is: %.10f * 2^%d\n', N, mantissa, lowerExponent); 

end

