module Main where

returnOrdinalOfFirstFibonacciWithLength :: Int -> Int
returnOrdinalOfFirstFibonacciWithLength 1 = 1
returnOrdinalOfFirstFibonacciWithLength length = find 3 1 2
  where
    find ordinal previous fibonacci
      | numberLength fibonacci == length = ordinal
      | otherwise                        = find (ordinal + 1) fibonacci (previous + fibonacci)

numberLength :: Integer -> Int
numberLength = length . show

main = putStr (show (returnOrdinalOfFirstFibonacciWithLength 1000))
