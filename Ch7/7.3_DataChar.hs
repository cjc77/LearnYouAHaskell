import Data.Char
import Data.List (groupBy)
import Data.Function (on)


words' :: [Char] -> [[Char]]
words' xs = filter (not . any isSpace) . groupBy ((==) `on` isSpace) $ xs

caesar :: Int -> [Char] -> [Char]
caesar shift msg =
    let ords = map ord msg
        shifted = map (+ shift) ords
    in map chr shifted


deCaesar :: Int -> [Char] -> [Char]
deCaesar shift msg = caesar (negate shift) msg


-- This does the same thing, but it's easer to read
caesar' :: Int -> [Char] -> [Char]
caesar' shift msg = map (chr . (+ shift) . ord) msg
