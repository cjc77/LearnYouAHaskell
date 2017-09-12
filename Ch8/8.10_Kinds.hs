

class Tofu t where
    tofu :: j a -> t a j


data ADT a b = ADT {adtField :: b a} deriving (Show)

instance Tofu ADT where
    tofu x = ADT x


data Barry t k p = Barry { yabba :: p, dabba :: t k }

instance Functor (Barry a b) where
    fmap f (Barry {yabba = x, dabba = y}) = Barry {yabba = f x, dabba = y}
