module ListExt where
-- import Data.List

zipWithIndex :: [a] -> [(a, Int)]
zipWithIndex as = zip as [0..n ] where n = length as - 1

flatten :: [[a]] -> [a]
flatten = concat
