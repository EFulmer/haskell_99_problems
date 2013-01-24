-- Problem 8:
-- Eliminate consecutive duplicates of list elements.
-- If a list contains repeated elements they should be replaced with a single 
-- copy of the element. The order of the elements should not be changed.

compress :: (Eq a) => [a] -> [a]
compress []     = []
compress (x:xs) = x:(dropWhile (x==) (compress xs))

main :: IO ()
main = putStrLn . show $ (compress ["a","a","a","a","b","c","c","a","a","d","e","e","e","e"] == ["a","b","c","a","d","e"])