-- 1) What would the type signature of length be?
-- length :: [a] -> Integer

awesome = ["Papuchon", "curry", ":)"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]
-- 2) a) length [1, 2, 3, 4, 5] == 5
--    b) length [(1, 2), (2, 3), (3, 4)] == 3
--    c) length allAwesome == 2
--    d) length (concat allAwesome) == 5

-- 3 & 4)
-- 6 / length [1, 2, 3] => 6 `div` length [1, 2, 3]

-- 5) 2 + 3 == 5 :: True
--
-- 6) let x = 5 in x + 3 == 5 == False
--
-- 7) a) length allAwesome == 2 == True
--    b) Won't compile: list has different types
--    c) length allAwesome + length awesome == 5
--    d) (8 == 8) && ('b' < 'a') == False
--    e) Won't compile: 9 is not a Bool
--
-- 8)
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = reverse x == x

-- 9)
myAbs :: Integer -> Integer
myAbs x = if x > 0 then x else negate x

-- 10)
f10 :: (a, b) -> (c, d) -> ((b, d), (a, c))
f10 ab cd = ((snd ab, snd cd), (fst ab, fst cd))


-- Correcting syntax
-- 1)
x = (+)
f xs = w `x` 1
    where w = length xs
-- 2)
myId = \x -> x
-- 3)
firstElement = \(x:xs) -> x
-- 4)
myFst (a, b) = a

-- Matching functions to their names
-- 1) c) show :: Show a => a -> String
-- 2) b) (==) :: Eq a => a -> a -> Bool
-- 3) a) fst :: (a, b) -> a
-- 4) d) (+) :: Num a => a -> a -> a
