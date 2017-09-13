import System.IO

main = do
    tdItem <- getLine
    appendFile "todo.txt" (tdItem ++ "\n")
