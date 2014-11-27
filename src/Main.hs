{-# LANGUAGE ScopedTypeVariables #-}
-- | Main entry point to the application.
module Main where
-- import Funcs
-- import ListComp
-- import RecurseLab
-- import HOFuncs
import Church

-- | The main entry point.
main :: IO ()
main = do
    print "Church"
    let c1 = one
        c2 = two
        c3 = \s z -> s (two s z)
    print $ church2int (add c1 c2)
    print $ church2int c3
    print $ church2int (mul c3 c2)
    print $ church2int (mul c2 c2)
    print $ church2int (exp' c3 c2)