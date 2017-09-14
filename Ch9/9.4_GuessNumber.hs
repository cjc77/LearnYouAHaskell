import System.Random
import Control.Monad(when)

main = do
    gen <- getStdGen
    askForNumber gen

askForNumber :: StdGen -> IO ()
askForNumber gen = do
-- (random int, RNG)
    let (randNumber, newGen) = randomR (1, 10) gen :: (Int, StdGen)
    putStr "Guess a number between 1-10: "
    numberString <- getLine
    when (not $ null numberString) $ do
-- Interpret input as number
        let number = read numberString
        if randNumber == number
            then putStrLn "Correct!"
            else putStrLn $ "Incorrect. Answer: " ++ show randNumber
-- Start program again
        askForNumber newGen
