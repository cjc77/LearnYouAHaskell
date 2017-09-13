import System.IO

-- main = do
--     handle <- openFile "girlfriend.txt" ReadMode
--     contents <- hGetContents handle
--     putStr contents
--     hClose handle

-- V2
-- main = do
--     withFile "girlfriend.txt" ReadMode (\ handle -> do
--         contents <- hGetContents handle
--         putStr contents)

-- V3
main = do
    contents <- readFile "girlfriend.txt"
    putStr contents
