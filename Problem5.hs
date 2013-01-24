-- Problem 5:
-- Reverse a list.

-- recursive:
rev :: [a] -> [a]
rev [] = []
rev (x:[]) = [x]
rev xs = (last xs):(rev $ init xs)

-- folding:
rev' :: [a] -> [a]
rev' = foldl (\x y -> y:x) []

-- test cases:
testOne   = [True, False, False]
testTwo   = [Just "J Mascis", Nothing]
testThree = [301]
testFour  = []

main :: IO ()
main = do
  putStrLn . show $ rev testOne
  putStrLn . show $ rev testTwo
  putStrLn . show $ rev testThree
  putStrLn . show $ (rev testFour :: [Int])
  putStrLn . show $ rev' testOne
  putStrLn . show $ rev' testTwo
  putStrLn . show $ rev' testThree
  putStrLn . show $ (rev' testFour :: [Int])