clear

fibNums = [];

% initialise first two fibonacci numbers
fibNums(1) = 1; fibNums(2) = 1;

i = 2;

while fibNums(i) < 4e6 % check numbers done exceed 4 million
    
    fibNums(i+1) = fibNums(i) + fibNums(i-1); % calculate next fib number
    i = i + 1;
    
end


k = 0;

evenFibs = zeros(1,1000);


% extract all even fibonacci numbers
for j = 1:numel(fibNums)
    
    if mod(fibNums(j),2)==0
        k = k + 1;
        evenFibs(k) = fibNums(j);
    end
    
end


% remove trailing zeros
for n = 1:numel(evenFibs)
    
    if evenFibs(n) == 0 && evenFibs(n-1) == 0
        finalEvenFibs = evenFibs(1:n-2);
        break
    end
end
        
% calculate the sum of all even fib numbers
sumEvenFibs = sum(evenFibs);
