-- Tower of Hanoi
hanoi :: Int -> a -> a -> a -> [(a,a)]
hanoi 0 _ _ _ = []
hanoi n a b c = hanoi (n-1) a c b ++ [(a,b)] ++ hanoi (n-1) c b a

-- Where
jumlah :: Int -> Int -> Int
jumlah a b = arg1 + arg2
        where
            arg1 = a + 1
            arg2 = b - 1

-- Quick Sort
-- p adalah head, xs adalah tail, jadi konsepnya head diletakan di depan, 
--      xs diolah sampai ketemu head berikutnya dan diolah kembali
-- Ord itu order
qsort1 :: Ord a => [a] -> [a]
qsort1 [] = []
qsort1 (p:xs) = qsort1 lesser ++ [p] ++ qsort1 greater
        where
            lesser = filter (<p) xs
            greater = filter (>=p) xs

-- Penggabungan beberapa function