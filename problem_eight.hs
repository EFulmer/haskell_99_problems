-- Problem 8:
-- Eliminate consecutive duplicates of list elements.

-- All we need to do is check the first element of the list against the second.
-- If they're different, continue on with the second and third, etc.
-- Otherwise, discard the first and repeat.

import Data.List

-- Data.List has the nub function that does just this.

-- compress :: (Eq a) => [a] -> [a]
-- compress [] = []
-- compress xs = xs
-- compress x:xs = if x /= xs !! 1 then x:(compress xs) else compress xs

-- folding
compress' :: (Eq a) => [a] -> [a]
compress' = foldr1 removeDupes
            where removeDupes x y = if x == y then 

-- guards
compress'' :: (Eq a) => [a] -> [a]
compress'' (x:xs)
  | length xs <= 1 = xs
  | otherwise      = if x /= xs !! 1 then x:(compress'' xs) else compress'' xs