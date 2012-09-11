import Lib (isPrime)

primes :: [Integer]
primes = filter isPrime [2 .. ]

main :: IO ()
main = print $ primes !! 10000
