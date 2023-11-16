module Main where

import System.Environment (getArgs)

import LargeNumbers
import FizzBuzz

main :: IO ()
main = do
    args <- getArgs
    let program = args !! 0
    output <- case program of
        "largeNumbers" -> largeNumbers
        "fizzbuzz" -> fizzbuzz
        _ -> return [""]
    putStrLn $ unlines output
