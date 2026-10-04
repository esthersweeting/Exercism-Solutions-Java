module Darts (score) where

score :: Float -> Float -> Int
score x y 
  |a <= 1 = 10
  |a <= 5 = 5
  |a <=10 =1
  |otherwise =0 
  where a=sqrt (x**2+y**2)
            
