module EnumFromTo where

eftInt :: Int -> Int -> [Int]
eftInt from to = go from to []
    where go from' to' acc
           | from' > to' = acc
           | otherwise = go from' (pred to') (to' : acc)

eftBase :: Enum a => a -> a -> [a]
eftBase x y = map toEnum $ eftInt (fromEnum x) (fromEnum y)

eftBool :: Bool -> Bool -> [Bool]
eftBool = eftBase

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd = eftBase

eftChar :: Char -> Char -> [Char]
eftChar = eftBase

