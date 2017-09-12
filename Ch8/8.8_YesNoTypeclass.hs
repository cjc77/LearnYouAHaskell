
-- Typeclass that mimics JS/Python/etc. boolean evaluations
-- Ex: "" == False

class YesNo a where
    yesno :: a -> Bool

-- Set 0 to evaluate to False
instance YesNo Int where
    yesno 0 = False
    yesno _ = True

-- Empty list/String [] evaluates to False
instance YesNo [a] where
    yesno [] = False
    yesno _ = True

-- Define booleans
instance YesNo Bool where
-- id is a std lib func that takes param and returns same thing
    yesno = id

-- Make Maybe a an instance
-- 'Nothing' evaluates to False
instance YesNo (Maybe a) where
    yesno (Just _) = True
    yesno Nothing = False


-- 'IF' statement that works with the yesno typeclass
yesnoIf :: (YesNo y) => y -> a -> a -> a
yesnoIf ynInput yRes nRes =
    if yesno ynInput then yRes else nRes
