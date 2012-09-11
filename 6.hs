squaresDiff :: [Integer] -> Integer
squaresDiff xs = ((^ 2) . sum $ xs) - (sum . map (^ 2) $ xs)

main :: IO ()
main = print $ squaresDiff [1 .. 100]
