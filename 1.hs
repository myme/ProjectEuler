sums :: Int -> Int
sums n = sum [x | x <- [0 .. n], x `mod` 3 == 0 || x `mod` 5 == 0]

main :: IO ()
main = print $ sums 1000
