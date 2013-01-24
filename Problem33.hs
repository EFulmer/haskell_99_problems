-- Problem 33:
-- Determine whether two positive integer numbers are coprime. Two numbers 
-- are coprime if their greatest common divisor equals 1.

euclid :: Integral a => a -> a -> a
euclid x y 
       | y == 0    = x
       | otherwise = euclid y (x `mod` y)

coprime :: Integral a => a -> a -> Bool
coprime x y = euclid x y == 1