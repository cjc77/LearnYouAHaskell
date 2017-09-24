import Control.Monad

type KnightPos = (Int,Int)

moveKnight :: KnightPos -> [KnightPos]
moveKnight (c,r) = do
    (c',r') <- [(c+2,r-1),(c+2,r+1),(c-2,r-1),(c-2,r+1)
               ,(c+1,r-2),(c+1,r+2),(c-1,r-2),(c-1,r+2)
               ]
-- Make sure that the resulting position is a valid location on board
    guard (c' `elem` [1..8] && r' `elem` [1..8])
    return (c',r')

-- Using "do" notation
-- threeMoves :: KnightPos -> [KnightPos]
-- threeMoves start = do
--     first <- moveKnight start
--     second <- moveKnight first
--     moveKnight second

-- Another method
threeMoves start = return start >>= moveKnight >>= moveKnight >>= moveKnight

possibleInThree :: KnightPos -> KnightPos -> Bool
possibleInThree start end = end `elem` threeMoves start
