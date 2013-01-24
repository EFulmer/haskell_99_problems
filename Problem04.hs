-- Problem 4:
-- Find the number of elements in a list.

-- pretty sure I saw both of these in Learn You a Haskell for Great Good!

lengthOne :: [a] -> Int
lengthOne [] = 0
lengthOne xs = 1 + (lengthOne $ tail xs)

lengthTwo :: [a] -> Int
lengthTwo xs = foldl (\m _ -> m + 1) 0 xs

-- test cases:
testOne = []
testTwo = [28, 27]
testThree = ["live forever", "supersonic", "rock 'n' roll star"]

-- should print: 0 2 3 0 2 3, each number on a separate line

main :: IO ()
main = do
  putStrLn . show $ lengthOne testOne
  putStrLn . show $ lengthOne testTwo
  putStrLn . show $ lengthOne testThree
  putStrLn . show $ lengthTwo testOne
  putStrLn . show $ lengthTwo testTwo
  putStrLn . show $ lengthTwo testThree
    