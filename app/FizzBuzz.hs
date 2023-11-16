module FizzBuzz where

boompop :: Integer -> [String]
boompop n = [whatisit x | x <- [1..n]]

whatisit :: Integer -> String
whatisit x
    | x `mod` 15 == 0 = "fizzbuzz"
    | x `mod` 3 == 0 = "fizz"
    | x `mod` 5 == 0 = "buzz"
    | otherwise = show x

fizzbuzz :: IO [String]
fizzbuzz = return $ boompop 100
