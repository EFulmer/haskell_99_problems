-- Problem 20:
-- Remove the K'th element from a list.

-- excitement! exclamation points!!
removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = (xs !! (n - 1), take (n - 1) xs ++ drop n xs)

-- fun with splitAt
removeAt' :: Int -> [a] -> (a, [a])
removeAt' n xs = (nth, rest)
          where nth  = last . fst $ splitAt n xs
                rest = (init . fst $ splitAt n xs) ++ (snd $ splitAt n xs)