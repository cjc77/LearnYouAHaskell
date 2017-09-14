import System.Random

threeCoins :: StdGen -> (Bool, Bool, Bool)
threeCoins gen =
    let (c1, newGen) = random gen
        (c2, newGen') = random newGen
        (c3, newGen'') = random newGen'
    in (c1, c2, c3)
