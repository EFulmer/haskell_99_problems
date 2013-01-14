-- Problem 15:
-- Replicate the elements of a list a given number of times.

repli :: [a] -> Int -> [a]
repli [] _     = []
repli (x:xs) n = (take n $ repeat x) ++ (repli xs n)