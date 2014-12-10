module Trees where

data Tree a = Leaf a | Branch (Tree a) a (Tree a)
              deriving Show

t :: Tree Int
t = Branch (Branch (Leaf 1) 3 (Leaf 4)) 5 (Branch (Leaf 6) 7 (Leaf 9))

occurs :: Eq a => a -> Tree a -> Bool
occurs m (Leaf n)     = m == n
occurs m (Branch l n r) = m == n || occurs m l || occurs m r

-- if the tree is ordered

occurs' :: Ord a => a -> Tree a -> Bool
occurs' m (Leaf n)                   = m == n
occurs' m (Branch l n r) | m == n    = True
                         | m < n     = occurs' m l
                         | otherwise = occurs' m r

flatten :: Tree a -> [a]
flatten (Leaf n)       = [n]
flatten (Branch l n r) = flatten l ++ [n] ++ flatten r
