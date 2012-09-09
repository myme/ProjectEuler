import Lib (primeFactors)

main :: IO ()
main = print . maximum . primeFactors $ 600851475143
