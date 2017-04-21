function x = problem3largestPrimeFactor(n)
%% Euler Project Problem 3 - Largest Prime Factor

% The prime factors of 13195 are 5, 7, 13 and 29.

% What is the largest prime factor of the number 600851475143 ?

%% Method

x = max(factor(n)); 
% MATLAB's factor function returns an array of prime factors. We can simply
% return the max of this array
end