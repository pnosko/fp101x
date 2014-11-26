module HOFuncs where

mapFilter :: (a -> b) -> (a -> Bool) -> [a] -> [b]
mapFilter f p as = map f (filter p as)
