function NthPrime = problem7x10001stPrime(n)
%% Euler Project Problem 7 - 10001st Prime

% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can
% see that the 6th prime is 13.

% What is the 10 001st prime number?


%% Method
tic

primesList = zeros(1,n);
primesList(1) = 2; primesList(2) = 3;

i = 3;
idx = 2;

while idx <= n
    
   i = i + 2;
   
   if isprime(i)
      idx = idx + 1;
      primesList(idx) = i;
   end
   
end


NthPrime = primesList(end); 

toc

end



