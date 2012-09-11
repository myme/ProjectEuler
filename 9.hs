pTriplets :: Int -> [(Int, Int, Int)]
pTriplets cap = [(a, b, c) |
    a <- [1 .. cap - 2],
    b <- [a .. cap - 2],
    c <- [cap - a - b],
    a ^ 2 + b ^ 2 == c ^ 2
    ]

main :: IO ()
main = print (a * b * c)
    where (a, b, c) = head $ pTriplets 1000
