-- 1)
f :: a -> a -> a -> a
x :: Char

-- (f x) :: Char -> Char -> Char

-- 2)
g :: a -> b -> c -> b

-- (g 0 'c' "woot") :: Char

-- 3 & 4)
h :: (Num a, Num b) => a -> b -> b

-- (h 1.0 2) :: Num b => b
-- (h 1 (5.5 :: Double)) :: Double

-- 5 & 6)
jackal :: (Ord a, Eq b) => a -> b -> a

-- (jackal "keyboard" "has the word jackal in it") :: [Char]
-- (jackal "keyboard") :: Eq b => b -> [Char]

-- 7, 8 & 9)
kessel :: (Ord a, Num b) => a -> b -> a

-- (kessel 1 2) :: (Num a, Ord a) => a
-- (kessel 1 (2 :: Integer)) :: (Num a, Ord a) => a
-- (kessel (1 :: Integer) 2) :: Integer
