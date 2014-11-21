-- | Main entry point to the application.
module Main where
import Funcs


-- | The main entry point.
main :: IO ()
main = do
    print $ halve [1, 2, 3, 4]
    print $ safetail [2, 3, 5]
    print $ safetail []
