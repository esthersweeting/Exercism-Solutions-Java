module Bob (responseFor) where
import Data.Char (toUpper)
import Data.Char (isSpace)

responseFor :: String -> String
responseFor xs = nospaceResponseFor (filter (not.isSpace) xs)
nospaceResponseFor :: String -> String
nospaceResponseFor xs 
  |xs=="" = "Fine. Be that way!"
  |(last xs =='?')&&(containsLetter xs)&&(map toUpper xs)==xs = "Calm down, I know what I'm doing!" 
  |last xs =='?'="Sure."
  |((map toUpper xs) == xs)&&(containsLetter xs) = "Whoa, chill out!"
  |otherwise = "Whatever."


containsLetter :: String -> Bool
containsLetter [] = False
containsLetter (x:xs) 
  |x `elem` "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" = True
  |otherwise = containsLetter xs
