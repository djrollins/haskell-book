---- Comprehension check
-- 1)
half x = x / 2
-- "let half x = x / 2" in the REPL
square x = x * x
-- "let square x = x * x" in the REPL

-- 2) area from radius function
area r = 3.14 * (r ^ 2)

---- Parentheses association
-- 1) Parentheses matter
-- 2) Parentheses do not matter
-- 3) Parentheses matter

---- Heal the sick
area x = 3.14 * (x * *)

double x = x * 2

x = 7
y = 10
f = x + y

---- A Head Code
x = 5 in x                  --  5
x = 5 in x * x              -- 25
x = 5; y = 6 in x * y       -- 30
x = 3; y = 1000 in x + 3    --  6

