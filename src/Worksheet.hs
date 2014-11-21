module Worksheet where
import Data.Typeable

-- last' :: Show a => [a] -> a
init' xs = take (length xs) xs

t :: Typeable a => a -> String
t = show . typeOf

-- infixl 6 |^|
-- |^| :: (Integral a) => a -> a -> a
-- |^| base exp = base ^ exp
worksheet :: IO ()
worksheet = do 
    print $ True && True
