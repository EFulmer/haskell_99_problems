-- Problem 7:
-- Flatten a nested list structure.

-- concat in Data.List is a Haskell-provided version, but that's no fun!

-- fold to the left
flatten :: [[a]] -> [a]
flatten xs = foldl (\acc x -> acc ++ x) [] xs

flatten' :: [[a]] -> [a]
flatten' xs = foldr (\x acc -> 

testOne = ["Raisans", "Sludgefeast", "Tarpit"]
testTwo = [[100], [200], [300]]

main :: IO ()
main = do
  putStrLn . show $ flatten testOne
  putStrLn . show $ flatten testTwo