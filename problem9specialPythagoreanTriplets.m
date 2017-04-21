%% Problem 9 - Special Pythagorean triplet
% 
% A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
%
% a^2 + b^2 = c^2
% For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
%
% There exists exactly one Pythagorean triplet for which a + b + c = 1000.
% Find the product abc.


% 31^2 is largest sq number under 1000.

triplets = zeros(997,3);

iTrips = 1;

for a = 1:997
    for b = a+1:997
        for c = b+1:997
            if a + b + c == 1000
                triplets(iTrips,:) = [a,b,c];
                iTrips = iTrips+1;
            end
        end
    end
end

triplets = triplets(1:iTrips-1,:);

for n = 1:size(triplets,1)
    
    if (triplets(n,1)^2 + triplets(n,2)^2 == triplets(n,3)^2)
        triplets(n,4) = 1;
    else
        triplets(n,4) = 0;
    end
    
end

idx = logical(triplets(:,4));

triplets = triplets(idx,:);

largest = size(triplets,1);

prod = triplets(largest,1)*triplets(largest,2)*triplets(largest,3);

        


