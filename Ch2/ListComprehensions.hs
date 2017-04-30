-- x*2 from 1-10
mult2Under10 = [x * 2 | x <- [1..10]]

-- Add some predicates
mult2Under10' = [x * 2 | x <- [1..10], x * 2 >= 12]

-- Complicated comprehension
pickyList = [x | x <- [1..100], x `mod` 7 == 3]
