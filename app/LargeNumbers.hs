module LargeNumbers where

import System.Random
import Data.Time.Clock.POSIX

randFloat :: IO Float
randFloat = do
    --time <- round `fmap` getPOSIXTime
    time <- getPOSIXTime
    let seed = round (realToFrac time * 10000000)
        gen = mkStdGen seed
        (rval, _) = randomR (0,1) gen
    return rval

coinFlip :: IO Int
coinFlip = do
    val <- randFloat
    return $ if val > 0.5 then 1 else 0

coinFlipN :: Int -> IO Int -> IO Int
coinFlipN 0 acc = acc
coinFlipN n acc = do
    c <- coinFlip
    a <- acc
    coinFlipN (n-1) $! (return $ c + a)

largeNumbers :: IO [String]
largeNumbers = do
    let n = 100000
    c <- coinFlipN n (return 0)
    return [show $ fromIntegral c / fromIntegral n]
