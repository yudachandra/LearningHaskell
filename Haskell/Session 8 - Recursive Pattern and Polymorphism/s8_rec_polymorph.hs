-- Tugas 1

-- skips "ABCD"         = ["ABCD", "BD", "C", "D"]
-- skips "hello!"       = ["hello!", "el!", "l!", "l", "o", "!"]
-- skips [1]            = [[1]]
-- skips [True, False]  = [[True, False], [False]]
-- skips []             = []

skips :: [a] -> [[a]]
skips xs = [elemen i xs | i <- [1..length xs]]

elemen :: Int -> [a] -> [a]
elemen n xs = case drop (n-1) xs of
        (y:ys) -> y : elemen n ys
        [] -> []


--Tugas 2

-- localMaxima [2,9,5,6,1] == [9, 6]
-- localMaxima [2,3,4,1,5] == [4]
-- localMaxima [1,2,3,4,5] == []

localMaxima :: [Int] -> [Int]
localMaxima (x:y:z:zs)
    | x < y && y > z = y : localMaxima (y:z:zs)
    | otherwise = localMaxima (y:z:zs)
localMaxima _ = []

-- Tugas 3

-- Histogram [1,1,1,5] = 
--   *
--   *
--   *       *
-- = = = = = = = = = =
-- 0 1 2 3 4 5 6 7 8 9
-- ATAU

-- Histogram [3, 5]
-- "   * *\n==========\n0123456789\n"
frekuensi :: [Int] -> [Int]
frekuensi xs = map (\n -> length (filter (== n) xs)) [0..9]

output :: [Int] -> Int -> String
output xs y = map (\x -> if x >= y then 'X' else 'O') xs -- saya ganti X dan O agar terlihat dibanding whitespace

histogram :: [Int] -> String
histogram xs = rows ++ "==========\n0123456789\n"
    where f = frekuensi xs
          m = maximum f
          rows = unlines (map (output f) [m, m-1..1])
