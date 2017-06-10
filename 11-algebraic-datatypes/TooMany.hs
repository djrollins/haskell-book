{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances #-}

class TooMany a where
	tooMany :: a -> Bool

instance TooMany Int where
	tooMany n = n > 42

newtype Goats = Goats Int deriving (Eq, Show, Num, TooMany)

instance TooMany (Int, String) where
	tooMany (n, _) = tooMany n

instance TooMany (Int, Int) where
	tooMany (x, y) = tooMany (Goats (x + y))

instance (Num a, TooMany a) => TooMany (a, a) where
	tooMany (x, y) = tooMany (x + y)
