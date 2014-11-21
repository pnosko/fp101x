module Knuth where
-- import Debug.Observe

arrow :: Integer -> Integer -> Integer -> Integer
arrow 1 base ex = base ^ ex
arrow _ base 1 = base
-- arrow ord base 2 = arrow (ord-1) base base
arrow ord base mul = arrow (ord - 1) base (arrow ord base (mul - 1))

a1 = arrow 1
a2 = arrow 2
a3 = arrow 3