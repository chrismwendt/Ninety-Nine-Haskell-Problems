-- Decode a run-length encoded list.

data Many a = Single a | Multiple Int a deriving (Show)

decodeModified = concatMap f
    where
        f (Single a) = [a]
        f (Multiple n a) = replicate n a
