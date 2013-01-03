-- Problem 3:
-- Find the k-th element of a list.

kthElem :: [a] -> Int -> a
kthElem xs k = xs !! (k - 1)

-- why not be silly with recursion?
elemAt :: (Integral b) => [a] -> b -> a
elemAt xs 1 = head xs
elemAt xs k = elemAt (tail xs) (k - 1)

-- as always, test cases:
testOne = [1]
testTwo = [Just "bears", Nothing]

-- main should print the following:
-- 1
-- Nothing
-- 1
-- Nothing

main :: IO ()
main = do
  putStrLn . show $ kthElem testOne 1
  putStrLn . show $ kthElem testTwo 2
  putStrLn . show $ elemAt testOne 1
  putStrLn . show $ elemAt testTwo 2