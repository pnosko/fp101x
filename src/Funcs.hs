module Funcs where
    
half :: Int -> Int
half = (`div` 2)

halve :: Show a => [a] -> ([a], [a])
halve = halveSplit

halveSplit = \as -> splitAt (half (length as)) as

halveNaive = \as -> (take  (half (length as)) as, drop (half (length as)) as)

safetail :: [a] -> [a]
safetail = safetailce

safetailce = \as -> if null as then [] else tail as

safetailpm [] = []
safetailpm (x:xs) = xs
