-- Problem 1:
-- Find the last element of a list.

-- imperative flavor, done without using last
lastElement :: [a] -> a
lastElement [] = error "empty list"
lastElement xs = xs !! (length xs - 1)

-- for fun, a recursive version
lastElementRec :: [a] -> a
lastElementRec []     = error "empty list"
lastElementRec (x:[]) = x
lastElementRec (x:xs) = lastElementRec xs

-- test cases:
testOne = [2,3,5,7,11,13,17,19,23,29]
testTwo = [2] -- edge case!

-- print results of testing
main :: IO ()
main = do
       putStrLn . show $ lastElement testOne
       putStrLn . show $ lastElementRec testTwo