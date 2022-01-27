
-- Cara 1
-- greaterThan100 :: [Integer] -> [Integer]
-- greaterThan100 [] = []
-- greaterThan100 (x:xs)
--     | x > 100 = x : greaterThan100 xs
--     | otherwise = greaterThan100 xs

-- Cara 2
gt100 :: Integer -> Bool
gt100 x = x > 100

greaterThan100 :: [Integer] -> [Integer]
greaterThan100 = filter gt100

-- Cara 3
-- Mengganti gt100 dengan lamda expression 
-- (gt100 menjadi \x -> x > 100)
greaterThan100_2 :: [Integer] -> [Integer]
greaterThan100_2 xs = filter (\x -> x > 100) xs

-- Lamda with multiple arguments
--  (\x y z -> [x,2*y,3*z]) 5 6 3
-- type of lambda nya menjadi Int

-- Cara 4
greaterThan100_3 :: [Integer] -> [Integer]
greaterThan100_3 xs = filter (>100) xs 
-- eta reduce xs menjadi greaterThan100_3 = filter (>100)

-- Fungsi Komposisi
-- (.) :: (b -> c) -> (a -> b) -> (a -> c)
-- -- (.) :: (a -> b) -> (b -> c) -> (a -> c)
-- (.) f g = \x -> f (g x)

-- myTest :: [Integer] -> Bool 
-- myTest xs = even (length (greaterThan100 xs))

-- simplifikasi fungsi diatas adalah
myTest' :: [Integer] -> Bool 
-- myTest' = even.length.greaterThan100
-- bisa juga dengan tanda dollar
myTest' xs = even $ length $ greaterThan100 xs

testComp1 :: [Int] -> [Int]
testComp1 = map (\x -> x-2).filter (>8)

testComp2 :: [Int] -> [Int]
testComp2 = filter (>8).map (\x -> x-2)

-- Curry
f :: (Int, Int) -> Int 
f (a,b) = a * b
-- curry f 5 6

-- (prelude first dari pairing)
-- fst :: (a, b) -> a 

-- (dari dua argumen jadi satu argumen pairing contohnya)
-- curry fst 1 2 

-- Uncurry
f2 :: Int -> Int -> Int
f2 a b = if a > 10 then a else b
-- uncurry (+) (1,2)

-- uncurry f2 (11,5)

f'' :: (Int, Int) -> Int 
f'' (x, y) = 2*x + y

-- dengan guard (konvensional)
foobar :: [Integer] -> Integer 
foobar [] = 0
foobar (x:xs)
    | x > 3 = (7*x + 2) + foobar xs
    | otherwise = foobar xs

-- dengan komposisi
foobar' :: [Integer] -> Integer 
foobar' = sum.map(\x -> 7*x + 2).filter(>3)

-- Foldl (left)
-- langkah 1 = foldl (-) 1 [1,2,3,4]
-- langkah 2 = foldl [1-1-2-3-4]
-- langkah 3 = (((1-1)-2)-3)-4
-- hasilnya -9

-- Foldr (right)
-- langkah 1 = foldr (-) 1 [1,2,3,4]
-- langkah 2 = foldr [1-2-3-4-0]
-- langkah 3 = 1-(2-(3-(4-1)))
-- hasilnya -1