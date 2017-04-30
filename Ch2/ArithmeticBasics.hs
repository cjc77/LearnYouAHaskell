-- 10 + 5 + 1
succArith = succ 9 + max 5 4 + 1

-- 92
succ2Arith = succ (9 * 10) + 1

-- Make Doubles of a Number
doubleMe x = x + x

-- Double Two Seperate Numbers
doubleUs x y = (x * 2, y * 2)

-- Double Two Seperate Numbers and Sum the Result
doubleAndAdd x y = x * 2 + y * 2


-- Reuse your functions!
-- (x + x) + (y + y)
reuseDoubleSum x y = doubleMe x + doubleMe y
