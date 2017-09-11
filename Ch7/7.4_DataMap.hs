import qualified Data.Map as Map



findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey key [] = Nothing
findKey key ((k,v):xs) = if key == k
                         then Just v
                         else findKey key xs


findKeyFold:: (Eq k) => k -> [(k,v)] -> Maybe v
findKeyFold key = foldr (\(k,v) acc -> if key == k
                                       then Just v
                                       else acc) Nothing

fromList' :: (Ord k) => [(k,v)] -> Map.Map k v
fromList' = foldr (\(k,v) acc -> Map.insert k v acc) Map.empty


-- Make the values lists so that one key can have multiple values
listToMapDuplicates xs = Map.fromListWith (++) $ map (\(k,v) -> (k,[v])) xs
