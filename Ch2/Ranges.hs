numRange = [1..20]
charRange = ['a'..'z']
capCharRange = ['A'..'Z']

-- evens
onlyEvens = [2, 4..20]

-- odds
onlyOdds = [1, 3..20]

-- custom step
threeStep = [3, 6..20]

-- counting down
countDown = [20, 19..1]

-- infinite list!
dontStop = [1..]

-- Cycle through a given list until t elements are retrieved
listCycle ls t = take t (cycle ls)

-- Repeat Fives
repeat5 t = take t (repeat 5)
