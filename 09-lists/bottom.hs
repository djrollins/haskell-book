-- Bottom madness
x1 = [x^y | x <- [1..5], y <- [2, undefined]]
    -- bottom
x2 = take 1 x1
    -- not bottom, evaluates to [1]
x3 = sum [1, undefined, 3]
    -- bottom
x4 = length [1, 2, undefined]
    -- not bottom, evaluates to 3
x5 = length $ [1, 2, 3] ++ undefined
    -- bottom as ++ adds undefined to the spine
x6 = take 1 $ filter even [1, 2, 3, undefined]
    -- not bottom, evaluates to 2
x7 = take 1 $ filter even [1, 3, undefined]
    -- bottom as there are not even values to take before undefined
x8 = take 1 $ filter odd [1, 3, undefined]
    -- not bottom, evaluates to 1
x9 = take 2 $ filter odd [1, 3, undefined]
    -- not bottom, evaluates [1, 3]
x10 = take 3 $ filter odd [1, 3, undefined]
    -- bottom will try and evaluate undefined

-- Is it in normal form?
-- NF   = Normal Form
-- WHNF = Weak Head Normal Form
-- N    = Neither
y1 = [1, 2, 3, 4, 5]        -- NF: expression fully evaluated
y2 = 1 : 2 : 3 : 4 : _      -- WHNF: head is the data constructor (:)
--     ^---------- head
y3 = enumFromTo 1 10        -- N: head is a potential function application
--       ^-------- head
y4 = length [1, 2, 3, 4, 5] -- N: head is a potential function application
--      ^--------- head
y5 = sum (enumFromTo 1 10)  -- N: head is a potential function application
--    ^----------- head
y6 = ['a'..'m'] ++ ['n'..'z']--N: head is a potential function application
--              ^--head
y7 = (_, 'b')               -- WHNF: head is the data constructor (,)
--   ^------------ head
