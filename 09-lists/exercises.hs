import Data.Char

-- 1 & 2)
upperOnly :: String -> String
upperOnly = filter isUpper

lowerOnly :: String -> String
lowerOnly = filter isLower

-- 3)
titleCase :: String -> String
titleCase "" = ""
titleCase (x:xs) = toUpper x : xs

-- 4)
upperCase :: String -> String
upperCase = map toUpper

-- 5)
upperFirst :: String -> Char
upperFirst = toUpper . head

