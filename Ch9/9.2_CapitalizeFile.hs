import System.IO
import Data.Char

main = do
    contents <- readFile "capsMe.txt"
    writeFile "capsMe.txt" (map toUpper contents)
