

data TrafficLight = Red | Yellow | Green


instance Eq TrafficLight where
    Red == Red = True
    Green == Green = True
    Yellow == Yellow = True
    _ == _ = False

-- NOTE: Same as:
-- data TrafficLight = Red | Yellow | Green deriving (Eq)


instance Show TrafficLight where
    show Red = "Stop!"
    show Yellow = "Yield!"
    show Green = "Go!"

-- NOTE - if did this:
-- data TrafficLight = Red | Yellow | Green deriving (Show)
-- ghci> Show Yellow...
-- Could only print "Yellow". Must define the instance of the typeclass
-- to use customized strings
