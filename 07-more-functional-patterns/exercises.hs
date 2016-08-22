-- Multiple choice
-- 1) d) A polymorphic function may resolve to values of different types, depending on in- puts
-- 2) b)
--    let f :: Char -> String
--    let g :: String -> [String]
--    g . f :: Char -> [String]
-- 3) d) f :: Ord a => a -> a -> Bool applied to a numeric value
--       Num a => f a :: (Num a, Ord a) => a -> Bool
-- 4) b) A function with the type (a -> b) -> c is is a higher-order function
-- 5) a) f :: a -> a
--       f True :: Bool

-- Let's write code
-- 1)
orderDigit :: Integral a => a -> a -> a
orderDigit i x = d
    where xLast = fst $ divMod x     i
          d     = snd $ divMod xLast i

tensDigit :: Integral a => a -> a
tensDigit = orderDigit 10

hunsDigit :: Integral a => a -> a
hunsDigit = orderDigit 100
-- 2)
foldBoolCase :: a -> a -> Bool -> a
foldBoolCase x y b =
    case b of
        True -> x
        _    -> y

foldBoolGuard :: a -> a -> Bool -> a
foldBoolGuard x y b
    | b = x
    | otherwise = y

-- 3)
g :: (a -> b) -> (a, c) -> (b, c)
g f (x, y) = (f x, y)
-- 4)
roundTrip :: (Show a, Read b) => a -> b
roundTrip = read . show

main = do
    print ((roundTrip 4) :: Integer)
    print (id 4)
