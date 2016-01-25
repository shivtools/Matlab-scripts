
## Author: Shiv Toolsidass
## Created: 2016-01-25
## HW1, Q1.33 - Implement an algorithm to sum up all the primes below a given number n.

% In order to do this, I decided to make use of a wonderful algorithm called Sieve of Eratosthenes to find all primes below an integer n and then subsequently sum them up. 
% Algorithm credits - Eratosthenes 276 B.C - 195/194 B.C

N = 30;

function [primes] = sumprime(N)

% Declare an array which holds all integers from 2 to n.
	primes = 2:N;
	p = 2;	
	
	% Iterate through all elements of array starting from index 2 (since 1 is not a prime number) and set all multiples of given index to 0.

	while(p <= N)
		for i = 2*p:p:N
			primes(i - 1) = 0;
		end;
		p = p + 1;
	end
	% Filter out all numbers that are not 0 i.e get only the prime numbers and store them in array 'primes'.
	primes = primes(primes > 0);
	sumPrimes = sum(primes);
	print(sumPrimes)
end


