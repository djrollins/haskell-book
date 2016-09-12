module StandardFunctions where

-- myOr :: [Bool] -> Bool
-- myOr [] = False
-- myOr (x:xs)
--     | x = True
--     | otherwise = myOrd xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs)
    | f x = True
    | otherwise = myAny f xs

myOr :: [Bool] -> Bool
myOr = myAny id

myElem :: Eq a => a -> [a] -> Bool
myElem x xs = myAny (== x) xs

myReverse :: [a] -> [a]
myReverse xs = rev xs []
    where rev [] a = a
          rev (x:xs) a = rev xs (x:a)

squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ (squish xs)

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = (f x) ++ (squishMap f xs)

squish' :: [[a]] -> [a]
squish' = squishMap id

myMinMaxBy :: Ordering -> (a -> a -> Ordering) -> [a] -> a
myMinMaxBy o _ (x:[]) = x
myMinMaxBy o f (x:xs) = go f x xs
    where go f b [] = b
          go f b (x:xs)
            | f b x == o = go f b xs
            | otherwise = go f x xs

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy = myMinMaxBy GT

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy = myMinMaxBy LT

myMaximum :: Ord a => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: Ord a => [a] -> a
myMinimum = myMinimumBy compare
