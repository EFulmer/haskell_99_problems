-- Problem 19:
-- Rotate a list N places to the left.

slice :: [a] -> Int -> Int -> [a]
slice xs start fin = drop (start - 1) (take fin xs)

rotate :: [a] -> Int -> [a]
rotate xs n = slice xs (n+1) (length xs)) ++ (slice xs 1 n) 