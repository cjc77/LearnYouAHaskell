

multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

multTwoNumsByTwo = multThree 2


isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A'..'Z'])

-- showThree :: (Num a)
showThree a b c = (a,b,c)

showTwoAndSeven = showThree 7
