-- | Main entry point to the application.
module Main where

-- | The main entry point.
main :: IO ()
main = do
    putStrLn "Welcome to FP Haskell Center!"
    putStrLn "Have a good day!"
    
    putStrLn head drop length xs xs
        where xs = [1..5]
