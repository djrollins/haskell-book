module SquareCube where

mySqr = [x^2 | x <- [1..5]]
myCube = [x^3 | x <- [1..5]]

myTuple = [(x, y) | x <- mySqr, y <- myCube]

myLimitedTuple = [(x, y) | x <- mySqr, y <- myCube, x < 50, y < 50]

main :: IO ()
main = do
    putStrLn . ("Tuple count: " ++) . show . length $ myLimitedTuple

