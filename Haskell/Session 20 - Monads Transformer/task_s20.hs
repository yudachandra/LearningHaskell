import Data.List

-- buat sebuah function yg mengconvert bilanang yang dimasukan menjadi dengan number format
-- contoh : (tidak support untuk desimal) 1000.0 (maka akan error)

-- addDotAll 1000

-- tidak boleh import libarary dari prelude Data.Text.Format.Number 

addDotAll :: Int -> [Char]
addDotAll x = h ++ t
    where
        sp = break (== '.') $ show x
        h = reverse (intercalate "," $ splitEvery $ reverse $ fst sp) 
        t = snd sp

