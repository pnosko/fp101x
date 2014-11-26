module ListComp where
import Data.Char

square :: Int -> Int
square x = x * x

sumOfSquaresToN n = sum [square x | x <- [1..n]]

replicate' n a = [a | _ <- [1..n]]

pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x, y, z) | x <- [1..n], y <- [x..n], z <- [y..n], square x + square y == square z]


let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr(ord 'a' + n)

normalize :: Int -> Int
normalize a = a - ord 'A' + ord 'z' + 1

shift :: Int -> Char -> Char
shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
          | isUpper c = int2let ((normalize (let2int c) + n) `mod` 26)
          | otherwise = c

encode :: Int -> String -> String
encode sh xs = map (shift sh) xs

caesar = encode 13