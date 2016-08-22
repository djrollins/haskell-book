---- Reading syntax
-- 1) a) concat [[1, 2, 3], [4, 5, 6]]
concat [[1, 2, 3], [4, 5, 6]]
-- b) ++ [1, 2, 3] [4, 5, 6]
(++) [1, 2, 3] [4, 5, 6]
-- c) (++) "hello" " world"
(++) "hello" " world"
-- d) ["hello" ++ " world]
["hello" ++ " world"]
-- e) 4 !! "hello"
"hello" !! 4
-- f) (!!) "hello" 4
(!!) "hello" 4
-- g) take "4 lovely"
take 4 "lovely"
-- h) take 3 "awesome"
take 3 "awesome"

-- 2)
-- a -> d
-- b -> c
-- c -> e
-- d -> a
-- e -> b
--

---- Building functions
-- 2) see "functions.hs"
