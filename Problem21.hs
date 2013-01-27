-- Problem 21:
-- Insert an element at a given position into a list.

insertAt :: a -> [a] -> Int -> [a]
insertAt x ys n = (take (n-1) ys) ++ x:(drop (n-1) ys)

-- TODO: with zippers! Lipovaca would be proud!