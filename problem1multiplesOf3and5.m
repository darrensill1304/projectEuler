function total = problem1multiplesOf3and5(limit)
%% Euler project Problem 1 - Multiples of 3 and 5

% If we list all the natural numbers below 10 that are multiples of 3 or 5,
% we get 3, 5, 6 and 9.
% The sum of these multiples is 23.
% Find the sum of all the multiples of 3 or 5 below 1000.

%% Method
list = zeros(limit,1); % pre-allocate for speed
idx = 0;

for i = 1:(limit-1)
    
    if mod(i,3)==0 || mod(i,5)==0
        idx = idx + 1;
        list(idx) = i;
    end
    
end

list = list(1:idx);

total = sum(list);



end