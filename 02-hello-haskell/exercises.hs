---- Parenthesization
-- 1) 2 + 2 * 3 - 1
let p1 = 2 + (2 * 3) - 1
-- 2) (^) 10 $ (1 + 1)
let p2 = 10 ^ (1 + 1)
-- 3) 2 ^ 2 * 4 ^ 5 + 1
let p3 = ((2 ^ 2) * (4 ^ 5)) + 1

---- Equivalent Expressions
-- 1)
let e1 = 1 + 1 == 2
-- 2)
let e2 = 10 ^ 2 == 10 + 9 * 10
-- 3)
let e3 = 400 - 37 /= (-) 37 400
-- 4)
-- let e4 = 100 `div` 3 /= 100 / 3 -- won't work due to type mismatch
-- 5)
let e5 = 2 * 5 + 18 /= 2 * (5 + 18)

---- More fun with functions
-- 1)
z = 7
y = z + 8
x = y ^ 2
waxOn = x * 5

let f1 = 10 + waxOn == 1135
let f2 = (+10) waxOn == 1135
let f3 = (-) 15 waxOn == -1120
let f3 = (-) waxOn 15 == 1120
