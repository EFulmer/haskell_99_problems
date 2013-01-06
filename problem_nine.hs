-- Problem 9:

-- Pack consecutive duplicates of list elements into sublists. If a list 
-- contains repeated elements they should be placed in separate sublists.

-- note to self: can pack lists by [x]:[], resulting in [[x]]

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:[]) = []
pack (x:y:ys) = if x == y then x:y:(pack ys) else [x] ++ pack (y:ys)

-- pack' :: Eq a => [a] -> [[a]]
