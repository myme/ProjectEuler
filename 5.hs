import Data.List ((\\))

import Lib (factorize)

evenlyDivisible :: [Integer] -> Integer
evenlyDivisible range = product . foldl foldFn [] $ map factorize range
    where foldFn xs ys = ys ++ (xs \\ ys)

main :: IO ()
main = print $ evenlyDivisible [1 .. 20]
