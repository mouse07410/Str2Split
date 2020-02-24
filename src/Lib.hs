module Lib
  ( splitStr
  , chunker
  , splitMore
  , splitLess
  ) where

import Data.List (intercalate, unfoldr)
--, unwords)

--import Data.List.Split
splitStr :: Int -> String -> String
splitStr n z =
  foldr
    (\x c st ->
       case n - st of
         0 -> ' ' : x : c 1
         _ -> x : c (succ st))
    (const "")
    z
    0

chunk'' :: Int -> [a] -> [[a]]
chunk'' n = takeWhile (not . null) . unfoldr (Just . splitAt n)

chunker :: Int -> [a] -> [[a]]
chunker = chunk''

splitMore :: Int -> String -> String
splitMore n z = (unwords $ chunk'' n z) :: String

splitLess :: Int -> String -> String
splitLess n z = intercalate " " $ chunk'' n z
