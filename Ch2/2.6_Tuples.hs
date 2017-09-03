
-- Get the first element of a 2-tuple (pair)
firstE p = fst p


-- Get the second element of a 2-tuple (pair)
secondE p = snd p

-- Create a list of pairs from 2 lists
zip4Lists as bs cs ds = zip as bs ++ zip cs ds

-- Right triangles with side lengths < 10, perimeter 24
right10p24 = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10],
              a^2 + b^2 == c^2, a + b + c == 24]
