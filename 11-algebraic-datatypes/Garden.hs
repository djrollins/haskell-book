data FlowerType = Gardenia
				| Daisy
				| Rose
				| Lilac
				deriving Show

type Gardener = String

data Garden =
	Garden Gardener FlowerType
	deriving Show

-- Normal form of Garden
--
