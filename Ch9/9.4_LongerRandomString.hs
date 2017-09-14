import System.Random
import Data.List


-- V1
-- main = do
--     gen <- getStdGen
--     let randomChars = randomRs ('a', 'z') gen
--         (first20, rest) = splitAt 20 randomChars
--         (second20, _) = splitAt 20 rest
--     let l1 = "First Random String:  " ++ first20
--         l2 = "Second Random String:  " ++ second20
--     putStrLn l1
--     putStr l2
--     putStrLn " "


main = do
    gen <- getStdGen
    let l1 = "First Random String:  " ++ take 20 (randomRs ('a', 'z') gen)
    gen' <- newStdGen
    let l2 = "Second Random String:  " ++ take 20 (randomRs ('a', 'z') gen')
    putStrLn l1
    putStrLn l2
