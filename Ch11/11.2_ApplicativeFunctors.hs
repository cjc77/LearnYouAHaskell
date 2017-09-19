
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
