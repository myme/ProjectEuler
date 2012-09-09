import Lib (isPalindrome)

palindromes :: Int -> [Int]
palindromes n = filter (isPalindrome . show) [x * y | x <- range, y <- range]
    where range = [n, n - 1 .. 0]

main :: IO ()
main = print . maximum . palindromes $ 999
