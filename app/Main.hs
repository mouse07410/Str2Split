module Main where

import Lib
--(chunker, splitLess, splitMore, splitStr)

main :: IO ()
main = do
  let s = "2d4fda81c8ce783asomeFunc" :: String
  putStrLn "Testing splitStr with complicated 'foldr'"
  print (splitStr 3 s :: String)
  putStrLn "Testing my 'chunker' that uses 'unfoldr'"
  print (chunker 2 s :: [String])
  putStrLn "Testing \"splitLess\" that uses 'unfoldr' and 'intercalate'"
  print (splitLess 4 s :: String)
  putStrLn "Testing \"splitMore\" that uses 'unfoldr' and 'unwords'"
  print (splitMore 2 s :: String)
