module Main where

revInt :: Integer -> Integer
revInt i = read (reverse (show i))::Integer
