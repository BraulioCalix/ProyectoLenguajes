import Data.List.Split
import System.IO
import Control.Monad
import Control.Monad.IO.Class
import Data.IORef
import Data.ByteString.Search.KarpRabin

import qualified Data.ByteString as B

main :: IO ()

main = do
    theFile <- openFile "Texto.txt" ReadMode
    contents <- hGetContents theFile
    print(splitOn " " contents)
    --print(split ' ' contents)
    hClose theFile


