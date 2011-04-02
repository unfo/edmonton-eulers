module Main where

returnOrdinalOfFirstFibonacciWithLength :: Int -> Int
returnOrdinalOfFirstFibonacciWithLength 1 = 1
returnOrdinalOfFirstFibonacciWithLength length = find 3 1 2
  where
    find ordinal previous current
      | current >= 10 ^ (length - 1) = ordinal
      | otherwise                    = find (ordinal + 1) current (previous + current)

main = putStr (show (returnOrdinalOfFirstFibonacciWithLength 1000))
