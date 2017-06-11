data Weekday =
      Monday
    | Tuesday
    | Wednesday
    | Thursday
    | Friday

-- 1) a) Weekday is a type with 5 data constructors


-- 2) c
f :: Weekday -> String
f Friday = "Miller Type"

-- 3) Types defined with the data keyword
-- b) must begin with a capital letter

--4 c) the fumction below delivers the final element of xs
g xs = xs !! (length xs - 1)
