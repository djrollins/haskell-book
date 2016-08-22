module Functions where

-- "Curry is awesome" -> "Curry is awesome!"
exclaim :: String -> String
exclaim = (++ "!")

-- "Curry is awesome!" -> "y"
fifth :: String -> String
fifth = take 1 . drop 4

-- "Curry is awesome!" -> "awesome!"
dropNine :: String -> String
dropNine = drop 9

third :: String -> Char
third = (!! 2)

letterOfString :: Int -> Char
letterOfString i = "Curry is awesome!" !! (i - 1)
