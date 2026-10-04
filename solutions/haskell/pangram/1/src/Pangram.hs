module Pangram (isPangram) where
import Data.List (delete)
import Data.Char (toLower)

isPangram :: String -> Bool
isPangram text = letterRemover (map toLower text) "abcdefghijklmnopqrstuvwxyz"

letterRemover :: String -> String -> Bool
letterRemover (x:xs) letters = letterRemover xs (delete x letters)
letterRemover _ [] = True
letterRemover [] _ = False
