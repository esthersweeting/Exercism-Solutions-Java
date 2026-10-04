module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus 
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune
planetSeconds Mercury = 0.2408467
planetSeconds Venus =0.61519726
planetSeconds Earth = 1
planetSeconds Mars = 1.8808158
planetSeconds Jupiter = 11.862615
planetSeconds Saturn = 29.447498
planetSeconds Uranus = 84.016846
planetSeconds Neptune = 164.79132

ageOn :: Planet -> Float -> Float
ageOn planet seconds = (seconds/31557600) / (planetSeconds planet)
