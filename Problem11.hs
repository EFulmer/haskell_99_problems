-- Problem 11:
-- Modified run-length encoding.
-- Modify the result of problem 10 in such a way that if an element has no 
-- duplicates it is simply copied into the result list. Only elements with
-- duplicates are transferred as (N E) lists.

data ListItem a = Single a | Multiple Int a 
     deriving (Eq, Ord, Show)

pack :: Eq a => [a] -> [[a]]
pack []      = []
pack (x:xs)  = (x:takeWhile (x==) xs):(pack $ dropWhile (x==) xs)

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode xs = map runLength $ pack xs
       where runLength ys = (length ys, head ys)

encodeModified :: Eq a => [a] -> [ListItem a]
encodeModified xs = let 
               toListItem (m, n) = if m == 1 then Single n else Multiple m n
               encodedList = encode xs
               in map toListItem encodedList