-- Problem 10:
-- Run-length encoding of a list. Use the result of problem P09 to implement 
-- the so-called run-length encoding data compression method. Consecutive 
-- duplicates of elements are encoded as lists (N E) where N is the number
-- of duplicates of the element E.

pack :: Eq a => [a] -> [[a]]
pack []      = []
pack (x:xs)  = (x:takeWhile (x==) xs):(pack $ dropWhile (x==) xs)

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode xs = map runLength $ pack xs
       where runLength ys = (length ys, head ys)