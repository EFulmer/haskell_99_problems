-- Problem 32:
-- Determine the greatest common divisor of two positive integer numbers. 
-- Use Euclid's algorithm.

euclid :: Integral a => a -> a -> a
euclid x y 
       | y == 0    = x
       | otherwise = euclid y (x `mod` y)