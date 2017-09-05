

findHead :: [a] -> a
findHead xs = case xs of [] -> error "<Empty>"
                         (x:_) -> x


findTail :: [a] -> [a]
findTail xs = case xs of [] -> error "<Empty>"
                         (_:xs) -> xs
