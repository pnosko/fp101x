module HOFuncsLab where
import Funcs

-----------------------------------------------------------------------------------------------------------------------------
-- LIST COMPREHENSIONS
------------------------------------------------------------------------------------------------------------------------------

-- ===================================
-- Ex. 0 - 2
-- ===================================

evens :: [Integer] -> [Integer]
evens = filter isEven

-- ===================================
-- Ex. 3 - 4
-- ===================================

-- complete the following line with the correct type signature for this function
squares :: Integer -> [Integer]
squares n = [square x | x <- [1..n]]

sumSquares :: Integer -> Integer
sumSquares n = sum (squares n)

-- ===================================
-- Ex. 5 - 7
-- ===================================

-- complete the following line with the correct type signature for this function
squares' :: Integer -> Integer -> [Integer]
squares' m n = [square x | x <- [n+1..n+m]]

sumSquares' :: Integer -> Integer
sumSquares' x = sum . uncurry squares' $ (x, x)

-- ===================================
-- Ex. 8
-- ===================================

coords :: Integer -> Integer -> [(Integer,Integer)]
coords x y = [(x', y') | x' <- [0..x], y' <- [0..y]]
