{-# OPTIONS_GHC -Wno-deferred-type-errors #-}
{-# LANGUAGE OverloadedStrings #-}
import Data.List.Split
import System.IO
import Control.Monad
import Control.Monad.IO.Class
import Data.IORef ()
import Data.ByteString.Search.KarpRabin (indicesOfAny)
import qualified Data.ByteString as B
import Data.ByteString.Char8 ()
import Data.ByteString.Lazy.Char8 (ByteString)



obtenerCantidad::[(Int,[Int])]->Int
obtenerCantidad = length



main :: IO ()
main = do
    file <- B.readFile "Prueba.txt"
    print "Ingrese 3 palabras para verificar si estan en el documento"
    otras <- sequence [B.getLine, B.getLine, B.getLine]
    let tuples = indicesOfAny otras file
    print "Estas son las tuplas dentro del archivo"
    print tuples
    print "Esta es la funcion"
    print $ obtenerCantidad tuples







