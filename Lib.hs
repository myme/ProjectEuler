module Lib where

-- | Calculate the greatest common divisor
gcd' :: Integer -> Integer -> Integer
gcd' 0 y = y
gcd' x 0 = x
gcd' x y
    | x > y     = gcd' y x
    | otherwise = gcd' x (y `mod` x)

-- | Fibonacci sequence, starting from [1, 1, .. ].
fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

divisors :: Integer -> [Integer]
divisors x = [y | y <- range, x `mod` y == 0]
    where range = [2 .. floor . sqDbl . fromIntegral $ x]
          sqDbl = sqrt :: Double -> Double

-- | Returns true if integer is a prime number.
isPrime :: Integer -> Bool
isPrime = null . divisors

-- | Finds all prime factors of an integer.
primeFactors :: Integer -> [Integer]
primeFactors = filter isPrime . divisors

-- | Returns true if the provided string is a palindrome.
isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

-- | Factorizes an integer
factorize :: Integer -> [Integer]
factorize x = let y = head $ divisors x
              in  if isPrime x
                      then [x]
                      else y : factorize (x `div` y)
