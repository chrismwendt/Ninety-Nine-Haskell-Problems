-- Modified run-length encoding.

data Many a = Single a | Multiple Int a deriving (Show)

pack [] = []
pack (x:xs) = left : pack right
    where (left,right) = span (== x) (x:xs)

encode :: Eq a => [a] -> [(Int,a)]
encode = map (\x -> (length x, head x)) . pack

encodeModified l = map (\(l, e) -> if l == 1 then Single e else Multiple l e) $ encode l
