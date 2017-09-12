
-- Point: (x,y)
data Point = Point Float Float deriving (Show)
-- Circle: (center, radius)
-- Rectangle (upper left, lower right)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)


surfaceArea :: Shape -> Float
surfaceArea (Circle _ r) = pi * r ^ 2
surfaceArea (Rectangle (Point x1 y1) (Point x2 y2)) =
            (abs $ x2 - x1) * (abs $ y2 - y1)

move :: Shape -> Float -> Float -> Shape
move (Circle (Point x y) r) a b = Circle (Point (x+a) (y+b)) r
move (Rectangle (Point x1 y1) (Point x2 y2)) a b =
            Rectangle (Point (x1+a) (y1+b)) (Point (x2+a) (y2+b))
