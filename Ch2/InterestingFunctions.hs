-- Only double a number if it num <= 100
doubleSmallNumber x = if x > 100
                        then x
                        else x * 2

-- This does the same thing, but adds 1 to the end
doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1
