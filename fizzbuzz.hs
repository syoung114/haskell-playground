fizzbuzz :: Integer -> [String]
fizzbuzz n = [whatisit x | x <- [1..n]]

whatisit :: Integer -> String
whatisit x
    | x `mod` 15 == 0 = "fizzbuzz"
    | x `mod` 3 == 0 = "fizz"
    | x `mod` 5 == 0 = "buzz"
    | otherwise = show x

main :: IO ()
main = putStrLn $ unlines $ fizzbuzz 100