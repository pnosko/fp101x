{-# LANGUAGE ExistentialQuantification #-}
module Church where

--church2int :: CNat a -> Int
church2int x = x (+1) 0

zero s z = z
one s z = s z
two s z = s (one s z)

type CNat a = (a -> a) -> a -> a

add :: CNat a -> CNat a -> CNat a
add x y = \s z -> x s (y s z)