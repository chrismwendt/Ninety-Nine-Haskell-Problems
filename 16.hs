-- Drop every N'th element from a list.

dropEvery [] _ = []
dropEvery l n = let (section, rest) = splitAt (n - 1) l
                in section ++ dropEvery (if null rest then [] else tail rest) n
