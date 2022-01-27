-- function helper 1
-- 1. lebih besar dari sepuluh, dibagi dua
-- cekgt10 [1,10,12,3,8,90,5]
-- [1,10,6,3,8,45,5]
-- pakai recursive dan pattern matching
-- pakai variable, dilarang hardcode


cekgt10 :: [Integer] -> [Integer]
cekgt10 [] = []
cekgt10 (x:xs)
    | x > 10 = x`div`2 : cekgt10 xs
    | otherwise = x : cekgt10 xs

-- function helper 2
-- 2. kemudian pilih hanya yg habis dibagi 2, 
-- sisanya dihilangkan 
-- selectMod0' [1,10,6,3,8,45,5]
-- [10,6,8]
selectMod0' :: [Integer] -> [Integer]
selectMod0' = filter (\x -> x `mod` 2 == 0).cekgt10
-- atau bisa juga selectMod0' = filter even.cekgt10

-- function main
-- pilih > 8, kemudian disusun dengan composition
-- comFunc [1,10,6,3,8,45,5]
-- 10
comFunc :: [Integer] -> [Integer]
comFunc =  filter(>8).selectMod0'.cekgt10