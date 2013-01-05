-- Problem 8:
-- Eliminate consecutive duplicates of list elements.

-- All we need to do is check the first element of the list against the second.
-- If they're different, continue on with the second and third, etc.
-- Otherwise, discard the first and repeat.

import Data.List

-- Data.List has the nub function that does just this.

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress (x:[]) = [x]
compress (x:xs@(y:ys)) = if x == y
                         then compress xs
                         else x:(compress xs)

-- test cases:
testOne = [1,1,1,2]
testTwo = "aa"

-- test against nub's results:
main :: IO ()
main = if nub testOne == compress testOne && nub testTwo == compress testTwo
       then putStrLn "Correct!"
       else putStrLn "Failure!"