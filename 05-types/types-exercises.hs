-- 1)
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h = g . f

data A
data B
data C

-- 2)
q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e = w . q

-- 3)
data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform t = (xz $ fst t, yz $ snd t)

-- 4)
munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge xy ywz = fst . ywz . xy

main = putStrLn "Compiles!"

