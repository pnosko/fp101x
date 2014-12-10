module Funcs where

half :: Int -> Int
half = (`div` 2)

isOdd :: Integer -> Bool
isOdd x = mod x 2 == 0

isEven :: Integer -> Bool
isEven = not . isOdd

square :: Integer -> Integer
square = (^2)

double :: Integer -> Integer
double = (*2)

halve :: Show a => [a] -> ([a], [a])
halve = halveSplit

halveSplit :: Show a => [a] -> ([a], [a])
halveSplit as = splitAt (half (length as)) as

halveNaive :: Show a => [a] -> ([a], [a])
halveNaive as = (take  (half (length as)) as, drop (half (length as)) as)

safetail :: Show a => [a] -> [a]  -- unfortunately Show is retarded
safetail = safetailge

safetailce :: Show a => [a] -> [a]
safetailce as = if null as then [] else tail as

safetailge :: Show a => [a] -> [a]
safetailge as | null as = ([] :: [a])
              | otherwise = tail as

safetailpm :: Show a => [a] -> [a]
safetailpm [] = []
safetailpm (_:xs) = xs
