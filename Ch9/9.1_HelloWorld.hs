import Data.Char


-- main = do
--     putStrLn "Enter Name: "
--     name <- getLine
--     putStrLn (name ++ ", you are amazing.")

-- main = do
--     putStrLn "First name: "
--     firstName <- getLine
--     putStrLn "Last name: "
--     lastName <- getLine
--     let uFirst = map toUpper firstName
--         uLast = map toUpper lastName
--     putStrLn $ "Name: " ++ uFirst ++ " " ++ uLast

-- main = do
--     line <- getLine
--     if null line
--         then return ()
--         else do
--             putStrLn $ reverseWords line
--             main
--
-- reverseWords :: String -> String
-- reverseWords = unwords . map reverse . words


main = do
    c <- getChar
    if c /= ' '
        then do
            putChar c
            main
        else return ()
