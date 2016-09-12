module Cyphers where

import Data.Char

ceaser :: Int -> [Char] -> [Char]
ceaser i [] = []
ceaser i (x:xs) 
    | isAlpha x = x':(ceaser i xs)
    | otherwise = x:(ceaser i xs)
        where x' = chr (((ord x + i) `mod` base) + base)
              base
                | elem x ['A'..'Z'] = ord 'A'
                | otherwise = ord 'a'

unceaser :: Int -> [Char] -> [Char]
unceaser i = ceaser (-i)
