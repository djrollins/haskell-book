-- 3) a addOneIfOdd n = case odd n of
--          True -> f n
--          False -> n
--          where f n = n + 1
addOneIfOdd :: Integral a => a -> a
addOneIfOdd n = case odd n of
    True -> f n
    False -> n
    where f = \n -> n + 1
-- b) addFive x y = (if x > y then y else x) + 5
addFive :: (Num a, Ord a) => a -> a -> a
addFive = \x -> \y -> (if x > y then y else x) + 5
-- c) mflip f = \x -> \y -> f y x
mflip :: (a -> b -> c) -> b -> a -> c
mflip f x y = f y x

main :: IO ()
main = putStrLn "Compiles!"
