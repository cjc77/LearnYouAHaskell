import System.IO
import System.Directory
import Data.List

main = do
    handle <- openFile "todo.txt" ReadMode
    -- Create temp file in current directory
    (tempName, tempHandle) <- openTempFile "." "temp"
    contents <- hGetContents handle
    let todoTasks = lines contents
        numberedTasks = zipWith (\n line -> show n ++ " - " ++ line) [1..] todoTasks
    putStrLn "To-Do Items: "
    -- Create a single '\n' delimited string
    putStr $ unlines numberedTasks
    putStr "Delete (ex: 1): "
    numberString <- getLine
    -- Turn numberString into a numerical type (and make it the valid index of
    -- its associated item)
    let number = read numberString - 1
        -- delete chosen idx and assign remaining list to "newTodoItems"
        newTodoItems = delete (todoTasks !! number) todoTasks
    -- Join newTodoItems into single string
    -- Write that string out to file
    hPutStr tempHandle $ unlines newTodoItems
    -- Close original and temp files
    hClose handle
    hClose tempHandle
    -- Delete old, rename temp
    removeFile "todo.txt"
    renameFile tempName "todo.txt"
