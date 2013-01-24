-- Problem 12:
-- Decode a run-length encoded list.
-- Given a run-length code list generated as specified in problem 11. 
-- Construct its uncompressed version.

data ListItem a = Single a | Multiple Int a 
     deriving (Eq, Ord, Show)

decodeModified :: [ListItem a] -> [a]
decodeModified [] = []
decodeModified (x:xs) = case x of Single x -> x:(decodeModified xs)
                                  Multiple y z -> (replicate y z) ++ (decodeModified xs)

-- for tuple version:
decodeModified' :: [(Int, a)] -> [a]
decodeModified' [] = []
decodeModified' (x:xs) = (replicate (fst x) (snd x)) ++ (decodeModified' xs)

-- for further screwing around with tuple version, uncurry would be useful
-- to call on replicate!
