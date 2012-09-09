module Lib where

fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

divisors :: Integer -> [Integer]
divisors x = [y | y <- [2 .. floor . sqrt . fromIntegral $ x], x `mod` y == 0]

isPrime :: Integer -> Bool
isPrime = null . divisors

primeFactors :: Integer -> [Integer]
primeFactors = filter isPrime . divisors
