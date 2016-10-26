import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate   UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase = [
    DbDate (UTCTime
            (fromGregorian 1911 5 1)
            (secondsToDiffTime 34123)),
    DbNumber 9001,
    DbString "Hello, world!",
    DbDate (UTCTime
            (fromGregorian 1921 5 1)
            (secondsToDiffTime 34123))]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr f []
    where f (DbDate d) acc = d : acc
          f _ acc = acc

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr f []
    where f (DbNumber n) acc = n : acc
          f _ acc = acc

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = foldr f (UTCTime (fromGregorian 0 1 1) (secondsToDiffTime 0))
    where f (DbDate a) b
            | a > b = a
            | otherwise = b
          f _ b = b

sumDb :: [DatabaseItem] -> Integer
sumDb = foldr f 0
    where f (DbNumber a) b = a + b
          f _ b = b

avgDb :: [DatabaseItem] -> Double
avgDb = average . filterDbNumber
    where average [] = 0
          average xs = fromIntegral (sum xs) / fromIntegral (length xs)

