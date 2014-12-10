module ListExt where
-- import Data.List

zipWithIndex :: [a] -> [(a, Integer)]
zipWithIndex as = zip as [0..] where n = length as - 1

flatten :: [[a]] -> [a]
flatten = concat
