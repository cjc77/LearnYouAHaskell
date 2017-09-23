

type Birds = Int
type Pole = (Birds, Birds)

-- Not signaling failure

-- landLeft :: Birds -> Pole -> Pole
-- landLeft n (left,right) = (left + n,right)
--
-- landRight :: Birds -> Pole -> Pole
-- landRight n (left,right) = (left,right + n)

x -: f = f x

landLeft :: Birds -> Pole -> Maybe Pole
landLeft n (left,right)
-- can't be imbalanced by >= 4
    | abs ((left + n) - right) < 4 = Just (left + n, right)
    | otherwise                    = Nothing

landRight :: Birds -> Pole -> Maybe Pole
landRight n (left,right)
-- can't be imbalanced by >= 4
    | abs(left - (right + n)) < 4 = Just (left,right + n)
    | otherwise                   = Nothing

-- Make Pierre trip (be a jerk)
-- CAN BE REPLACED WITH: >> Nothing 
banana :: Pole -> Maybe Pole
banana _ = Nothing
