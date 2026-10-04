module ReverseString (reverseString) where

reverseString :: String -> String
reverseString [] = []
reverseString str = assistRev str []
assistRev [] acc = acc
assistRev (x:xs) acc =  assistRev xs (x:acc)
