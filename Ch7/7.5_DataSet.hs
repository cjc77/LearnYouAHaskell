import qualified Data.Set as Set

-- dedup a list. This will also order the list
setNub :: Ord a => [a] -> [a]
setNub xs = Set.toList $ Set.fromList xs
