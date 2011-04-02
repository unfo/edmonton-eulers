module Main where

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

returnOrdinalOfFirstFibonacciWithLength :: Int -> Int
returnOrdinalOfFirstFibonacciWithLength desiredLength = find' 0
  where
    find' n | numberLength (fibs!!n) == desiredLength = n
            | otherwise                               = find' (n + 1)

numberLength :: Integer -> Int
numberLength = length . show

main = putStr (show (returnOrdinalOfFirstFibonacciWithLength 1000))
