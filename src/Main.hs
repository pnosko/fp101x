{-# LANGUAGE ScopedTypeVariables #-}
-- | Main entry point to the application.
module Main where
-- import Funcs
-- import ListComp
-- import RecurseLab
import HOFuncs

-- | The main entry point.
main :: IO ()
main = do
    print "HOFuncs"
    let nums = [1..10]
        isOdd = (mod 2 == 0)
        double = (*2)
    print $ mapFilter double isOdd nums
    print $ [double x | x <- nums, isOdd x]