-- Problem 1:
-- Find the next to last element of a list.

lastButOne :: [a] -> a
lastButOne (x:y:[]) = x
lastButOne (x:xs)   = if length xs > 2
                    then lastButOne xs
                    else error "list only has one element"
lastButOne []       = error "empty list"

nextToLast :: [a] -> a
nextToLst []   = error "empty list"
nextToLast [x] = error "list only has one element"
nextToLast xs  = xs !! (length xs - 2)

penultimate :: [a] -> a
penultimate xs
  | length xs == 0 = error "empty list"
  | length xs == 1 = error "list only has one element"
  | otherwise      = reverse xs !! 1

testOne   = "aeiou"
testTwo   = [1,2]
testThree = [True]

main :: IO ()
main = do
  putStrLn . show $ lastButOne testOne
  putStrLn . show $ lastButOne testTwo
  putStrLn . show $ nextToLast testThree
  putStrLn . show $ nextToLast testOne
  putStrLn . show $ nextToLast testTwo
  putStrLn . show $ penultimate testThree
  putStrLn . show $ penultimate testOne
  putStrLn . show $ penultimate testTwo
  putStrLn . show $ penultimate testThree