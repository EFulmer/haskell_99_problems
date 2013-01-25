-- Problem 15:
-- Replicate the elements of a list a given number of times.

-- First approach: just use Prelude's replicate function. Uninteresting.
repli :: [a] -> Int -> [a]
repli [] _     = []
repli (x:xs) n = (replicate n x) ++ (repli xs n)

-- Second approach: use take-repeat to mimic replicate. Still boring.
repli' :: [a] -> Int -> [a]
repli' [] _     = []
repli' (x:xs) n = (take n $ repeat x) ++ (repli xs n)

-- Simple monadic approach
repli'' :: [a] -> Int -> [a]


testOne = [1,2,3]
testTwo = [Just "mayonaise", Nothing]

-- Should print
-- [1,1,2,2,3,3]
-- [Just "mayonaise",Just "mayonaise",Nothing,Nothing]
-- three times in a row

main :: IO ()
main = do
     putStrLn . show $ repli testOne 3
     putStrLn . show $ repli testTwo 3 
     putStrLn . show $ repli' testOne 3
     putStrLn . show $ repli' testTwo 3
     putStrLn . show $ repli'' testOne 3
     putStrLn . show $ repli'' testTwo 3
