-- Run-length encoding of a list (direct solution).

data Many a = Single a | Multiple Int a deriving (Show)

encodeDirect l = foldr f [] l
    where
        f v [] = [Single v]
        f v ass@(Single a : as)
            | v == a = Multiple 2 a : as
            | otherwise = Single v : ass
        f v ass@(Multiple n a : as)
            | v == a = Multiple (n + 1) a : as
            | otherwise = Single v : ass
