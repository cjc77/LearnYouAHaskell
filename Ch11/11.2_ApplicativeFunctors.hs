import Control.Applicative

productsGTEN :: (Ord a, Num a) => a -> [a] -> [a] -> [a]
productsGTEN n xs ys = filter (>n) $ (*) <$> xs <*> ys


-- Method 1
-- myAction :: IO String
-- myAction = do
--     a <- getLine
--     b <- getLine
--     return $ a ++ b

-- Method 2 (applicative style)
myAction :: IO String
myAction = (++) <$> getLine <*> getLine



-- sequenceA :: (Applicative f) => [f a] -> f [a]
-- sequenceA [] = pure []
-- sequenceA (x:xs) = (:) <$> x <*> sequenceA xs


-- Using a fold
-- sequenceA :: (Applicative f) => [f a] -> f [a]
-- sequenceA = foldr (liftA2 (:)) (pure [])
