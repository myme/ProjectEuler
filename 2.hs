import Lib (fibs)

sum' :: Integer
sum' = sum . filter even . takeWhile (< 4 * 10 ^ 6) . tail $ fibs

main :: IO ()
main = print sum'
