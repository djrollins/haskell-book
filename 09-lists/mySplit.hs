module MySplit where

mySplitOn :: Eq a => a -> [a] -> [[a]]
mySplitOn _ [] = []
mySplitOn d a@(x:xs) 
    | x == d = mySplitOn d xs
    | otherwise = takeWhile (/= d) a : mySplitOn d (dropWhile (/= d) a)

myLines :: String -> [String]
myLines = mySplitOn '\n'

myWords :: String -> [String]
myWords = mySplitOn ' '
