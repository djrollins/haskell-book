module WordNumber where

import Data.List (intersperse)

digitToWord :: Int -> String
digitToWord n = dWords !! n
    where dWords = [ "zero", "one", "two",   "three", "four",
                     "five", "six", "seven", "eight", "nine"]

digits :: Int -> [Int]
digits n = go n []
    where go x xs
           | x < 10 = x:xs
           | otherwise = go d (m:xs)
                where (d, m) = divMod x 10
    

wordNumber :: Int -> String
wordNumber = concat . intersperse "-" . map digitToWord . digits
