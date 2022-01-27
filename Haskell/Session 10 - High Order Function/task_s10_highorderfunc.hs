fun1 :: [Int] -> Int
fun1 [] = 1
fun1 (x:xs)
    | even x = (x-2) * fun1 xs
    | otherwise = fun1 xs

fun1a :: [Int] -> Int
-- fun1a (x:xs) = product (filter even (map (subtract 2) (x:xs)))
-- atau
fun1a = product . map (\x -> x - 2) . filter even

-- step 1 = ambil yg genap, hasilnya [10,20]
-- step 2 = kurangi 2 [8,18]
-- step 3 = dikalikan product nya [8*18] = 144
-- step 4 = 13 adalah ganjil, maka list kosong [] = 1
-- terakhir 144 * 1

-- Notes 
-- map even [1,2,3,4,5,6]   
-- map (\x -> not (even x)) [1..22]
-- filter (\x -> not (even x)) [1..22]
-- map (not.even) [1..9]
-- sum [1,2,3,4] = 10
-- product [1,2,3,4] = 24
-- sum (filter (>2) [1,2,3,4,5]) = 3+4+5
    -- sum $ filter (>2) [1,2,3,4,5]

fun2 :: Int -> Int
fun2 1 = 0
fun2 n
    | even n = n + fun2 (n `div` 2)
    | otherwise = fun2 (3 * n + 1)

-- Ubah fungsi diatas dengan lambda, iterate, takewhile, 
-- filter, sum, composition, even dan if then else 
--     atau where dll

fun2a :: Int -> Int
-- fun2a x = if even x then x + fun2 (x `div` 2) else fun2 (3 * x + 1)
-- fun2a x = if x == 1 then 0 else if even x then x + fun2a (x `div` 2) else fun2a (3 * x + 1)
-- atau
fun2a = sum . filter even . takeWhile (>1) . iterate (\x -> if even x then x `div` 2 else 3 * x +1)

-- step 1 = 10 = genap
-- step 2 = pilih yg genap maka fun2 (10/2) = 5
--         otherwise nya pilih 5, maka 3 * 5 + 1 = 15
-- 16 genap, maka 16/2 = 8
-- 8 genap, maka 8/2 = 4
-- 4 genap, maka 4/2 = 2
-- 2 genap, maka 2/2 = 1
-- 1 maka pilih yg 0, (karena fun2 1 = 0)
--     jadi 16+8+4+2+0 = n + 30 = 40

-- Iterate
-- take n (iterate (2c) 1)
-- take 10 (iterate (2*) 2)
-- takeWhile odd [1,2,3,4,5,6,7] 
    -- ketika ada value yg even, lgsg berhenti
-- takeWhile (<20) (iterate (2*) 1)

