module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n = collCount n 0

collCount :: Integer -> Integer -> Maybe Integer
collCount n acc 
  |n < 1 = Nothing
  |n`mod`2==0 = collCount (n `div` 2) (acc+1)
  |n == 1 = Just acc
  |otherwise = collCount (3*n +1) (acc+1) 
