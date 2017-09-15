import System.Environment
import System.IO
import System.Directory
import System.IO.Error
import Control.Exception

-- No exception handling

-- main = do (fileName:_) <- getArgs
--           contents <- readFile fileName
--           putStrLn $ "The file has " ++ show (length (lines contents)) ++ " lines!"


-- Safer version

-- main = do (fileName:_) <- getArgs
--           fileExists <- doesFileExist fileName
--           if fileExists
--               then do contents <- readFile fileName
--                       putStrLn $ "Line Count: " ++ show (length (lines contents))
--               else do putStrLn "File DNE"


-- Using try catch

-- main = toTry `catch` handler
--
-- toTry :: IO ()
-- toTry = do (fileName:_) <- getArgs
--            contents <- readFile fileName
--            putStrLn $ "Line Count: " ++ show (length (lines contents))
--
-- handler :: IOError -> IO ()
-- handler e = putStrLn "Error."


-- Using multiple catches

main = toTry `catch` handler

toTry :: IO ()
toTry = do (fileName:_) <- getArgs
           contents <- readFile fileName
           putStrLn $ "Line Count: " ++ show (length (lines contents))

handler :: IOError -> IO ()
handler e
    | isDoesNotExistError e =
        case ioeGetFileName e of Just path -> putStrLn $ "File does not exist at: " ++ path
                                 Nothing -> putStrLn "File does not exist at unknown location."
    | otherwise = ioError e
