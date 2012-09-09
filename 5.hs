evenlyDivisible :: [Int] -> [Int]
evenlyDivisible xs = filter divAll [1 .. ]
    where divAll x = all ((== 0) . (x `mod`)) xs

main :: IO ()
main = print . head . evenlyDivisible $ [1 .. 10]
