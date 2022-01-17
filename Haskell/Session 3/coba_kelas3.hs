rec_sum :: Int -> Int
rec_sum n = if n == 0 then 0
                else if  n == 1 then n + 1
                else n + rec_sum (n-1)

rec_sum2 :: Int -> Int
rec_sum2 n
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = n + rec_sum2 (n-1)

rec_nama :: String -> String
rec_nama stringNama
    | stringNama == "" = "Nama Kosong"
    | otherwise = "Nama Saya " ++ stringNama

rec_nama2 :: [String] -> String
rec_nama2 a = "Nama Depan Anda : " ++ head a

head1 :: [Int] -> [Int]
tail1 :: [Int] -> [Int]
head1 (x:xs) = [x]
tail1 (x:xs) = xs

repeatxNtimes :: Int -> a -> [a]
repeatxNtimes 0 x = []
repeatxNtimes n x = x : repeatxNtimes (n-1) x

allSquares :: [Int] -> [Int]
allSquares [] = []
allSquares (x:xs) = x * x : allSquares xs

-- addNumber :: Int -> Int
-- addNumber x = 1 + x

-- callAddNumber :: Int -> Int
-- callAddNumber x = addNumber + 1

add2arg :: Int -> Int -> Int
add2arg x y = x + y

callAdd :: Int
callAdd = add2arg 4 3

mulThem ::  Int -> Int -> Int
mulThem x y = x * y

callMoreThanOneFunction :: Int
callMoreThanOneFunction = let addIt = callAdd
                            in mulThem addIt 2
                            -- let in itu sebuah expression spt if else