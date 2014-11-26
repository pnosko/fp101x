module HOFuncs where

mapFilter :: (a -> b) -> (a -> Bool) -> [a] -> [b]
mapFilter f p as = map f (filter p as)

curry' :: ((a, b) -> c) -> a -> b -> c
curry' f = \ x y -> f (x, y)

uncurry' :: (a -> b -> c) -> (a, b) -> c
uncurry' f = \ (x, y) -> f x y

unfold :: (b -> Bool) -> (b -> a) -> (b -> b) -> b -> [a]
unfold p h t x
    | p x = []
    | otherwise = h x : unfold p h t (t x)