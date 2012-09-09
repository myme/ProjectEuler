module Lib where

-- | Fibonacci sequence, starting from [1, 1, .. ].
fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

-- | Find all integer divisors of a number.
divisors :: Integer -> [Integer]
divisors x = [y | y <- [2 .. floor . sqrt . fromIntegral $ x], x `mod` y == 0]

-- | Returns true if integer is a prime number.
isPrime :: Integer -> Bool
isPrime = null . divisors

-- | Finds all prime factors of an integer.
primeFactors :: Integer -> [Integer]
primeFactors = filter isPrime . divisors

-- | Returns true if the provided string is a palindrome.
isPalindrome :: String -> Bool
isPalindrome s = s == reverse s
