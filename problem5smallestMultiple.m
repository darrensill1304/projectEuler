function val = problem5smallestMultiple(n)
%% Euler Project Problem 5 - Smallest Multiple

% 2520 is the smallest number that can be divided by each of the numbers
% from 1 to 10 without any remainder.

% What is the smallest positive number that is evenly divisible by all of
% the numbers from 1 to 20?

%% Method
profile on
i = 0;
val = [];

while isempty(val)
    
    i=i+1;
    
    if sum(mod(i,1:n))==0
        val = i;
    end
    
end
profile off
profile report

end