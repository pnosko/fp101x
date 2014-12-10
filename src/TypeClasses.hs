module TypeClasses where

import           Prelude hiding (Left, Right)

{-

Types and Classes


Type declarations
declaring type synonyms

-}

type Pos = (Int, Int)
type Board = [Pos]

-- it can also be parameterised

type Assoc k v = [(k, v)]

{-

Data declarations

data Bool = False | True

-}


data Move = Left | Right | Up | Down
            deriving Show

move :: Move -> Pos -> Pos
move Left (x, y)  = (x - 1, y)
move Right (x, y) = (x + 1, y)
move Up (x, y)    = (x, y + 1)
move Down (x, y)  = (x, y - 1)

moves :: [Move] -> Pos -> Pos
moves [] p       = p
moves (m : ms) p = moves ms (move m p)


flip :: Move -> Move
flip Left  = Right
flip Right = Left
flip Up    = Down
flip Down  = Up


data Shape = Circle Float | Rect Float Float
             deriving Show

square :: Float -> Shape
square n = Rect n n

area :: Shape -> Float
area (Circle r) = pi * r ^ 2
area (Rect x y) = x * y

{-

Recursive types

-}


data List a = Nil | Cons a (List a)
              deriving Show

len :: List a -> Int
len Nil         = 0
len (Cons _ xs) = 1 + len xs

