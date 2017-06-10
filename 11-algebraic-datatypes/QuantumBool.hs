data QuantumBool = QuantumTrue
                 | QuantumFalse
                 | QuantumBoth deriving (Eq, Show)

data TwoQs =
    MkTwoQs QuantumBool QuantumBool
    deriving (Eq, Show)

type TwoQsTuple = (QuantumBool, QuantumBool)


