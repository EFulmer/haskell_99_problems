-- Problem 15:
-- Replicate the elements of a list a given number of times.


-- First approach: just use Prelude's replicate function. Uninteresting.
repli :: [a] -> [a]
repli []     = []
repli (x:xs) = (replicate 2 x) ++ (repli xs)

-- Second approach: use take-repeat to mimic replicate. Still boring.
repli' :: [a] -> [a]
repli' []     = []
repli' (x:xs) = (take 2 $ repeat x) ++ (repli xs)

-- Now with monads. Now we're talking.
repli'' :: [a] -> [a]
repli'' xs = xs >>= (\x -> [x,x])

testOne = [1,2,3]
testTwo = [Just "mayonaise", Nothing]

-- Should print
-- [1,1,2,2,3,3]
-- [Just "mayonaise",Just "mayonaise",Nothing,Nothing]
-- three times in a row

main :: IO ()
main = do
     putStrLn . show $ repli testOne
     putStrLn . show $ repli testTwo
     putStrLn . show $ repli' testOne
     putStrLn . show $ repli' testTwo
     putStrLn . show $ repli'' testOne
     putStrLn . show $ repli'' testTwo