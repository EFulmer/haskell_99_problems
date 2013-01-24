-- Problem 14:
-- Duplicate the elements of a list.

-- simplest possible way I can think of
duplicate :: [a] -> [a]
duplicate []     = []
duplicate (x:xs) = x:x:(duplicate xs)

-- monads!
duplicate' :: [a] -> [a]
duplicate' [] = []
duplicate' ls = ls >>= (\y -> [y,y])

-- folding
duplicate'' :: [a] -> [a]
duplicate'' = foldr (\x acc -> x:x:acc) []