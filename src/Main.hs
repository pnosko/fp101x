{-# LANGUAGE ScopedTypeVariables #-}
-- | Main entry point to the application.
module Main where
-- import Funcs
-- import ListComp
-- import RecurseLab
-- import HOFuncs
import Church
-- import HOFuncsLab
-- import Parsers
import InteractiveLab
import Data.Char

-- | The main entry point.
main :: IO ()
main = do
    print "Interactive"
    print $ nat2int (mul two two)