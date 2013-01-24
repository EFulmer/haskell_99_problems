-- Problem 7:
-- Flatten a nested list structure.

import Data.List

-- going to do this for both standard nested lists (type [[a]]) and the
-- NestedList type

data NestedList a = Elem a | List [NestedList a]

nestedFlatten :: NestedList a -> [a]
nestedFlatten (Elem x)      = [x]
nestedFlatten (List [])     = []
nestedFlatten (List (x:xs)) = nestedFlatten x  ++ (nestedFlatten $ List xs)

-- by folding:
nestedFlatten' :: NestedList a -> [a]
nestedFlatten' (Elem x)  = [x]
nestedFlatten' (List []) = []
nestedFlatten' (List xs) = foldl1' (++) $ map nestedFlatten' xs

-- concat in Data.List is a Haskell-provided version, but that's no fun!

-- left fold:
flatten :: [[a]] -> [a]
flatten xs = foldl (\acc x -> acc ++ x) [] xs

-- flatten' :: [[a]] -< [a]
-- flatten' xs = 

testOne = ["Raisans, ", "Sludgefeast, ", "Tarpit, "]
testTwo = [[100], [200], [300]]

main :: IO ()
main = do
  putStrLn . show $ flatten testOne
  putStrLn . show $ flatten testTwo