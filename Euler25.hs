module Euler25 where

fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + (fib (n - 2))

returnFirstFibonacciWithLength :: Int -> Integer
returnFirstFibonacciWithLength desiredLength = find' 0
  where
    find' n | numberLength (fib n) == desiredLength = n
            | otherwise                             = find' (n + 1)

numberLength :: Integer -> Int
numberLength = length . show

main = putStr (show (returnFirstFibonacciWithLength 1000))
