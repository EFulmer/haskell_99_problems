-- Problem 6:
-- Find out whether a list is a palindrome.

-- simplest way to do it:
palindrome :: (Eq a) => [a] -> Bool
palindrome xs = xs == reverse xs

-- a bit of zipWith fanciness; likely a bit faster since and short-circuits?
palindrome' :: (Eq a) => [a] -> Bool
palindrome' xs = and $ zipWith (==) xs (reverse xs)

-- test cases:
testOne = [2,1,2]
testTwo = "two one two"
testThree = ""

main :: IO ()
main = do
  putStrLn . show $ palindrome testOne
  putStrLn . show $ palindrome testTwo
  putStrLn . show $ palindrome testThree
  putStrLn . show $ palindrome' testOne
  putStrLn . show $ palindrome' testTwo
  putStrLn . show $ palindrome' testThree
