-- Multiple choice
-- 1) a)  Makes equality tests possible
-- 2) b) The typeclass Ord is a subclass of Eq
-- 3) a) the type of '>' is `Ord a => a -> a -> Bool`
-- 4) c) In `x = divMod 16 12` x is a tuple type
-- 5) a) The typeclass Integral incluse Int and Integer numbers

-- Does it type check
-- 1)
data Person = Person Bool deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

-- 2)
data Mood = Blah | Woot
    deriving (Show, Eq)

settleDown :: Mood -> Mood
settleDown x = if x == Woot
                then Blah
                else x

-- 3)
-- a) settleDown accepts anything of type Mood
-- b) settleDown 9 will emit a `No instance (Num Mood)` error
-- c) Blah > Woot will not compile as Mood does not implement Ord

type Subject = String
type Verb = String
type Object = String

data Sentence = 
    Sentence Subject Verb Object
    deriving (Eq, Show)

s1 = Sentence "dogs" "drool" -- :: String -> Sentence
s2 = Sentence "Julie" "loves" "dogs" -- :: String

-- Given a datatype declaration, what can we do?
data Rocks = Rocks String deriving (Eq, Show)
data Yeah = Yeah Bool deriving (Eq, Show)
data Papu = Papu Rocks Yeah deriving (Eq, Show)

-- 1) Need to use data constructor as below
-- phew = Papu "chases" True
-- 2)
truth = Papu (Rocks "chomskydoz") (Yeah True)
-- 3)
equalityForAll :: Papu -> Papu -> Bool
equalityForAll p p' = p == p'
-- 4) Won't compile as Papu is not an instance of Ord
-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'

-- Type-Kwon-Do Two: Electric Typealoo
-- 1)
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f x y = f x == y
-- 2)
arith :: Num b => (a -> b) -> Integer -> a -> b
arith f i a = f a + fromInteger i

main = putStrLn "It compiles!"

