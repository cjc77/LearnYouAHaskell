-- x*2 from 1-10
mult2Under10 = [x * 2 | x <- [1..10]]

-- Add some predicates
mult2Under10' = [x * 2 | x <- [1..10], x * 2 >= 12]

-- Complicated comprehension
pickyList = [x | x <- [1..100], x `mod` 7 == 3]


boomBangs xs = [ if x < 10 then "Boom!" else "Bang!" | x <- xs, odd x ]

anotherPickyList = [x | x <- [10..20], x /= 13, x /= 15, x /= 19]

cartesian = [ x * y | x <- [2, 5, 10], y <- [8, 10, 11]]
