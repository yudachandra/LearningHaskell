foo :: Int -> Int 
foo 0 = 16
foo 1
    | "Haskell" > "C++" = 3
    | otherwise         = 4
foo n
    | n < 0             = 0
    | n `mod` 17 == 2   = -43
    | otherwise         = n + 3

--     -- 1
-- task1 :: [Integer] -> [Integer]
-- task1 = 10 : [1,2,3]
task1 :: Integer ->[Integer]
task1 n = n : [1,2,3]

-- -- 2
-- task2 :: [Integer] -> [Integer]
-- task2 = [1,2,3] ++ 10
task2 :: Integer -> [Integer]
task2 n = [1,2,3] ++ [n]

-- -- 3
-- task3 :: [Integer] -> [Integer]
-- task3 = head [1,2,3]
task3 :: [Integer] -> Integer
task3 listmasukan = head listmasukan

-- -- 4
cekAmbilAngka list4 
    | length list4 > 10 = take 5 list4
    | otherwise = list4

-- -- 5
-- list5 :: [Integer] ->[Integer]
-- list5 = [1,2,3,4,5,6,7,8,9,10,11]
list5 :: [Int] -> [Int]
list5 x = if length x > 10 then take 5 x else x 


