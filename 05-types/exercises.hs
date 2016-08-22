-- Multiple choice
-- 1) a)
[a] -- is a list of elements all of type a
-- 2) a)
[[a]] -> [a] -- could take a list of strings as an argument
-- 3) b)
[a] -> Int -> a -- returns one element of type a from a list
-- 4) c)
(a, b) -> a -- takes a tuple argument and returns the first value

-- Determine the type
-- 1) a)
(* 9) 6 :: Num a => a
    == 54
-- b)
head [(0, "doge"), (1, "kitteh")] :: Num a => (a, [Char])
    == (0, "doge")
-- c)
head [(0 :: Integer), "doge"),(1, "kitteh")] :: (Integer, [Char])
    == (0, "doge")
-- d)
if False then True else False :: Bool
    == False
-- e)
length [1, 2, 3, 4, 5] :: Int
    == 5
-- f)
(length[1, 2, 3, 4]) > (length "TACOCAT") :: Bool
    == False

-- 2)
let x = 5; y = x + 5; w = y * 10
w :: Num a => a

-- 3)
let x = 5; y = x + 5; z y = y * 10
z :: Num a => a -> a

-- 4)
let x = 5; y = x + 5; f = 4 / y
f :: Fractional a => a

-- 5)
let x = "Julie"; y = " <3 "; z = "Haskell"; f = x ++ y ++ z
f :: [Char]

-- Does it compile?
-- 1) Does not compile and can't be fixed as you cannot apply a number to another number
bigNum = (^) 5 $ 10
wahoo = bigNum $ 10
-- 2) Compiles fine
x = print
y = print "woohoo!"
z = x "hello, world!"
-- 3) Does not compile as it attempts to apply a number to another number
-- 4) Does not compile as c is not defined
--

-- Type variable or or type constructor?
-- [0] concrete type
-- [1] constrained polymorphic
-- [2] fully polymorphic
f :: Num a => a -> b -> Int -> Int
--           [1]  [2]   [0]    [0]
f :: zed -> Zed -> Blah
--    [2]    [0]    [0]
f :: Enum b => a -> b -> C
--            [2]  [1]  [0]
f :: f -> g -> C
--  [2]  [2]  [0]

-- Write a type signature
-- 1)
functionH :: [a] -> a
functionH (x:_) = x
-- 2)
functionC :: Ord a => a -> a -> Bool
functionC x y = if (x > y) then True else False
-- 3)
functionS :: (a, b) -> b
functionS (x, y) = y

-- Given a type, write the function
-- 1)
i :: a -> a
i = id
-- 2)
c :: a -> b -> a
c x y = x
-- 3)
c'' :: b -> a -> b
c'' x y = x
-- 4)
c' :: a -> b -> b
c x y = y
-- 5)
r :: [a] -> [a]
r = reverse
-- 6)
co :: (b -> c) -> (a -> b) -> (a -> c)
co f g = f . g
-- 7)
a :: (a -> c) -> a -> a
a f x = x
-- 8)
a' :: (a -> b) -> a -> b
a' f a = f a
