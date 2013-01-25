-- Problem 18
-- Extract a slice from a list.
-- Given two indices, i and k, the slice is the list containing the elements
-- between the i'th and k'th element of the original list (both limits 
-- included). Start counting the elements with 1.

-- take and drop make this simple
slice :: [a] -> Int -> Int -> [a]
slice xs start fin = drop (start - 1) (take fin xs)

-- using !!
slice' :: [a] -> Int -> Int -> [a]
slice' xs start fin
       | start <= fin = (xs !! (start-1)):(slice xs (start+1) fin) 
       | otherwise    = []

-- error-tolerant version of the original: if fin < start, flips arguments 
-- around
slice'' :: [a] -> Int -> Int -> [a]
slice'' xs start fin = if fin < start then slice'' fin start 
                       else drop (start - 1) (take fin xs)