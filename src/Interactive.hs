module Interactive where

putChar' :: Char -> IO ()
putChar' = putChar

--putStr' :: String -> IO ()
--putStr' [] = return ()
--putStr' (x:xs) = putChar' x >>= putStr' xs

triangle :: Integer -> Integer
triangle 0 = 0
triangle n = n + triangle (n-1)

count :: Eq a => a -> [a] -> Integer
count a [] = 0
count a (x:xs) = (if a == x then 1 else 0) + count a xs

