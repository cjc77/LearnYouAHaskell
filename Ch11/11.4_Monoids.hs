import Data.Monoid


-- Compare 2 strings - compares by length; if lengths same,
-- compares alphabetically
-- strComp :: String -> String -> Ordering
-- strComp x y = let a = length x `compare` length y
--                   b = x `compare` y
--               in if a == EQ then b else a


-- Using monoids
-- "mappend":
-- left parameter != EQ, left parameter kept
-- else, right parameter kept
strComp :: String -> String -> Ordering
strComp x y = (length x `compare` length y) `mappend`
              (x `compare` y)


-- Compare 2 strings - compares by length
-- If lengths same, compares by vowel count
vowelComp :: String -> String -> Ordering
vowelComp x y = (length x `compare` length y) `mappend`
                (vowels x `compare` vowels y)
    where vowels = length . filter (`elem` "aeiouy")
