{-# LANGUAGE ExistentialQuantification #-}
module Church where

data Nat = Zero | Succ Nat
           deriving Show

zero = Zero
one = Succ Zero
two = Succ one

nat2int :: Nat -> Int
nat2int Zero     = 0
nat2int (Succ n) = 1 + nat2int n

int2nat :: Int -> Nat
int2nat 0 = Zero
int2nat n = Succ (int2nat (n - 1))

add :: Nat -> Nat -> Nat
add Zero n     = n
add (Succ m) n = Succ (add m n)

mul :: Nat -> Nat -> Nat
mul Zero _ = Zero
mul _ Zero = Zero
mul (Succ m) n = add n (mul m n)