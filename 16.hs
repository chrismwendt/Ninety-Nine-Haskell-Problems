-- Drop every N'th element from a list.

dropEvery l n = [ i | (i, j) <- zip l $ cycle [1..n], j /= n]
