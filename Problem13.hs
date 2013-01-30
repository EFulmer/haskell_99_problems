-- Problem 13:
-- Run-length encoding of a list (direct solution).
-- Implement the so-called run-length encoding data compression method 
-- directly. I.e. don't explicitly create the sublists containing the 
-- duplicates, as in problem 9, but only count them. As in problem P11, 
-- simplify the result list by replacing the singleton lists (1 X) by X.

data ListItem a = Single a | Multiple Int a deriving (Eq, Ord, Show)

encodeDirect :: Eq a => [a] -> [ListItem a]
encodeDirect [] = []
encodeDirect (x:xs) = 