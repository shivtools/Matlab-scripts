
## Author: Shiv Toolsidass
## Created: 2016-01-25
## HW1, Q1.33 - Implement an algorithm to sum up all the primes below a given number n.

% In order to do this, I decided to make use of a wonderful algorithm called Sieve of Eratosthenes to find all primes below an integer n and then subsequently sum them up. 
% Algorithm credits - Eratosthenes 276 B.C - 195/194 B.C

function [sumPrimes] = sumprime(n)

% Declare an array which holds all integers from 1 to n.
	array = 1:n;
	% Iterate through all elements of array starting from index 2 (since 1 is not a prime number)
	for i = 2:numel(array)
		% If element at index i != -1, then iterate through every multiple of i and set it equal to -1.
		if array[i] != -1
			j = i;
		        while(i*j <= numel(array)
				array[i*j] = -1;
				j++;	%increment j
	% By the end of the above loops, the array should contain all prime numbers.

	% Iterate through for loop again and if an element is != -1, add it to sum.
       sumPrimes = 0;	
       for k = 2:numel(array)
		if array[k] != -1
			sumPrimes += array[k];
	
end	

v = sumprime(10)
