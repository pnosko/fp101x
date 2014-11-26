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
    let c1 = two
        c2 = one
    print $ church2int (add c1 c2)