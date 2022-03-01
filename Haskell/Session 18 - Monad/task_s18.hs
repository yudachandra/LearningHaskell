-- Task A

-- Buat sebuah function dengan signature dibawah ini, 
-- yg menggunakan command replicate, lambda dan bind, 
-- dimana dia akan mereplicate huruf X, sebanyak jumlah 
-- yg ada di argument dalam elemen dari list yg diberikan

-- Signature adalah sbb:

taskA :: [Int] -> [String]
taskA [] = [""]
taskA (x:xs) = if length (x:xs)> 1 then replicate (sum (x:xs)) "X"
                else replicate x "X"
 
-- Hasil :
-- ghci> taskA [1]  -- ini hanya mereplicate 1
-- ["X"]
-- ghci> taskA [2] -- ini hanya mereplicate 2
-- ["X","X"]
-- ghci> taskA [1,3] -- ini me replicate 1 + 3 = 4
-- ["X","X","X","X"]
-- ghci> taskA [4, 0, 1] -- ini mereplicate 4 + 0 + 1 = 5
-- ["X","X","X","X","X"]


-- Task B

-- Buat sebuah function dengan fmap, lambda dan replicate, 
-- yg akan menggandakan string X sesuai nilai dari tiap 
-- elemen dari list yg diberikan, jika dijalankan hasilnya sbb


taskB :: [Int] -> [[String]]
taskB [] = [[""]]
taskB (x:xs) = if length (x:xs)> 1 then replicate x (replicate (sum (x:xs)) "X")
                else replicate 2 (replicate (sum (x:xs)) "X")

-- ghci> taskB [4, 0, 1]
-- [["X","X","X","X"],[],["X"]]
-- ghci> taskB [4]
-- [["X","X","X","X"]]
-- ghci> taskB [0]
-- [[]]
-- ghci> taskB [1]
-- [["X"]]
