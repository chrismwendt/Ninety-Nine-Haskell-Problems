-- Extract a slice from a list.

slice l i j = take (j - i + 1) $ drop (i - 1) l
