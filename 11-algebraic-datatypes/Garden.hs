data FlowerType = Gardenia
                | Daisy
                | Rose
                | Lilac
                deriving Show

type Gardener = String

data Garden =
    Garden Gardener FlowerType
    deriving Show

-- Normal form of Garden using (') to prevent
-- redefinition of data constructors above
data Garden' = Gardenia' Gardener
             | Daisy' Gardener
             | Rose' Gardener
             | Lilac' Gardener
             deriving Show


