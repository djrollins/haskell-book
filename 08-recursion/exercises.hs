module Recursion where
-- Review of types
-- 1) d) [[True, False], [True, True], [False, True]] :: [[Bool]]
-- 2) c) [[3 == 3], [6 > 5], [3 < 4]] :: [[Bool]] as above
-- 3) d) all of the above (See question for context)
-- 4) b) func "Hello" "World" (See qestion for context)
--
-- Reviewing currying
-- 1)
cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

curry1 = appedCatty "woohoo!" == "woops mrow woohoo"

curry2 = frappe "1" == "1 mrow haha"

curry3 = frappe (appedCatty "2") == "woops mrow 2 mrow haha"

curry4 = appedCatty (frappe "blue") == "woops mrow blue mrow haha"

curry5 = cattyConny (frappe "blue")
                    (cattyConny "green" (appedCatty "blue"))
            == "blue mrow haha mrow green mrow woops mrow blue"

curry6 = cattyConny (flippy "Pugs" "are") "awesome"
            == "are mrow Pugs mrow awesome"

-- Recursion
-- 1) Task is too tedious
dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
    where go n d count
           | n < d = (count, n)
           | otherwise = go (n - d) d (count + 1)
--  dividedBy 15 2 = go 15 2 0
--      go (15 - 2) 2 (0 + 1)
--      go 13       2  1
--        go 11 2 2
--          go 9 2 3
--            go 7 2 4
--              go 5 2 5
--                go 3 2 6
--                  go 1 2 7
--                    (1 < 2) = (7, 1)
--

-- 2)
sumTo :: (Eq a, Num a) => a -> a
sumTo num = go num 0
    where go n t
           | n == 0 = t
           | otherwise = go (n - 1) (t + n)

-- 3)
mult :: Integral a => a -> a -> a
mult x y = go x y 0
    where go x y t
           | x == 0 = t
           | otherwise = go (x - 1) y (t + y)

-- Fixing dividedBy
data DivideResult a = Result a | DivideByZero
    deriving Show

dividedByFixed :: Integral a => a -> a -> DivideResult (a, a)
dividedByFixed x y
    | y == 0 = DivideByZero
    | otherwise = go x y 0
        where go x y t
               | x < y = Result (t, x)
               | otherwise = go (x - y) y (t + 1)

-- McCarthy 91 function
mc91 :: Integral a => a -> a
mc91 n
    | n > 100 = n - 10
    | otherwise = mc91 . mc91 . (+11) $ n

