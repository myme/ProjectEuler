module Lib where

fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
