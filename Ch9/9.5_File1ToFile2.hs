import System.Environment
import qualified Data.ByteString.Lazy as B


main = do
    (srcFile:destFile:_) <- getArgs
    copyFile srcFile destFile

copyFile :: FilePath -> FilePath -> IO ()
copyFile source dest = do
    contents <- B.readFile source
    B.writeFile dest contents
