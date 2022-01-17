f :: Int -> Maybe Int 
f 0 = Nothing 
f x = Just x

-- data Maybe a  = Just | Nothing a

tes :: Int -> Maybe Int 
tes x = if x > 0 then Just x else Nothing

extractAdd :: Maybe Int -> Int 
extractAdd (Just x) = x + 20
extractAdd Nothing = 0

cekData :: Int -> IO()
cekData z = do
            let xx = tes z
            let zz = extractAdd xx
            print ("nilainya = " ++ show zz)

-- Partial Function
getHead :: [Int] -> Int 
getHead [] = 0
getHead [_] = 0
getHead (x:xs) = x

doStuff2 :: [Int] -> Int
doStuff2 [] = 0
doStuff2 [_] = 0
doStuff2 (x1:x2:_) = x1 + x2

emptyStringList :: [String]
emptyStringList = []

safeHead :: [a] -> Maybe a
safeHead [] = Nothing 
safeHead (x:_) = Just x


main = do
    let value1 = 1
    putStrLn "Result for the Value is : "
    let result1 = maybe False odd (Just value1)
    print ("result for value 1 is : ", result1)