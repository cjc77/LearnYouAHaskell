import qualified Data.Map as Map


type Name = String
type PhoneNumber = String
type PhoneBook = [(Name, PhoneNumber)]

phoneBook :: PhoneBook
phoneBook =
    [("Sean", "555-1234")
    ,("Joe", "555-2342")
    ,("Leilah", "444-5555")
    ,("Samantha", "555-4444")
    ]


lookUp :: Name -> PhoneNumber -> PhoneBook -> Bool
lookUp name pnumber pbook = elem (name,pnumber) pbook

-- AssocList is a type constructor
type AssocList k v = [(k,v)]




data LockerState = Taken | Free deriving (Show, Eq)

type Code = String
-- LockerMap: (locker #, (state, locker code))
type LockerMap = Map.Map Int (LockerState, Code)


lockers :: LockerMap
lockers = Map.fromList
    [(100,(Taken,"3 32 4"))
    ,(101,(Free, "4 24 21"))
    ,(102,(Free, "30 12 9"))
    ,(103,(Free, "16 2 14"))
    ,(104,(Taken, "23 32 10"))
    ,(105,(Taken, "17 7 27"))
    ]

-- Use Left/Right so that you can return information about failure types
lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map =
    case Map.lookup lockerNumber map of
        Nothing -> Left $ "Locker number" ++ show lockerNumber ++ " doesn't exist!"
        Just (state, code) -> if state /= Taken
                              then Right code
                              else Left $ "Locker " ++ show lockerNumber ++
                                          " is already taken!"
