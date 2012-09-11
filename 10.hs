import Lib (primes)

main :: IO ()
main = print $ sum . takeWhile (< cap) $ primes
    where cap = 2 * 10 ^ 6
