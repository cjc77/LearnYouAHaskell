

-- Person : firstName, lastName, age
-- able to test for equality because derives from 'Eq'
data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     } deriving (Show,Read,Eq)


data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
           deriving (Eq, Ord, Show, Read, Bounded, Enum)
