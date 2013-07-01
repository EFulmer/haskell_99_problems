-- Problem 13:
-- Run-length encoding of a list (direct solution).
-- Implement the so-called run-length encoding data compression method 
-- directly. I.e. don't explicitly create the sublists containing the 
-- duplicates, as in problem 9, but only count them. As in problem P11, 
-- simplify the result list by replacing the singleton lists (1 X) by X.

module Problem14 (encodeDirect) where

data ListItem a = Single a | Multiple Int a deriving (Eq, Ord, Show)

acc :: Eq a => Int -> [a] -> [ListItem a]
acc n (x:[]) = if n > 1 
               then [Multiple n x]
               else [Single  x]
acc n xs@(x:y:ys) = if x == y 
                    then acc (n + 1) (y:ys)
                    else if n > 1 
                         then (Multiple n x):(acc 1 (y:ys))
                         else (Single x):(acc 1 (y:ys))

encodeDirect :: Eq a => [a] -> [ListItem a]
encodeDirect [] = []
encodeDirect xs = acc 1 xs