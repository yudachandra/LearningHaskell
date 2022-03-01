f x y = x + 2

a = 10

-- tambah :: Int 
-- tambah 

tambahLagi :: Int -> Int
tambahLagi a = a + 10

cekNilaiA :: Int
cekNilaiA = a

f1 :: Maybe a -> [Maybe a]
f1 m = [m,m]

f2 :: Maybe a -> [a]
f2 Nothing = []
f2 (Just x) = [x]

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:xs) = Just x

repeat' :: a -> [a]
repeat' x = x : repeat' x

take' :: Int -> [a] -> [a]
take' n _ | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

fn x = [x,x]

-- foldl (+) 1 [1,2,3]
-- [1,1,2,3]
-- foldr (+) 1 [1,2,3]
-- [1,2,3,1]
-- foldl (+) 1 [1..100000000] jadi hang

-- import Data.List
-- foldl' (+) 1 [1..100000000]

if' :: Bool -> a -> a -> a
if' True x _ = x
if' False _ y = y