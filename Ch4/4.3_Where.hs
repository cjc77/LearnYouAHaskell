

bmiMsg :: (RealFloat a) => a -> a -> String
bmiMsg weight height
    | bmi <= skinny = "Skinny!"
    | bmi <= normal = "Normal!"
    | bmi <= fat = "Fat!"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat = 30.0

makeInitials :: String -> String -> String
makeInitials firstN lastN = [f] ++ ". " ++ [l] ++ ". "
    where (f:_) = firstN
          (l:_) = lastN

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2
