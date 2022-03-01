import System.Win32 (xBUTTON1, COORD (yPos))
tanya :: IO ()
tanya = do text <- getLine
           if null text
                then putStrLn "You refuse to enter something?"
                else putStrLn ("You entered " ++ text)

check :: Int -> Maybe Int
check n | n < 10    = Just n
        | otherwise = Nothing

halve :: Int -> Maybe Int
halve n | even n    = Just $ n `div` 2
        | otherwise = Nothing

ex01 :: Maybe Int
ex01 = return 7 >>= check >>= halve
ex02 :: Maybe Int
ex02 = return 12 >>= check >>= halve
ex03 :: Maybe Int
ex03 = return 12 >>= halve >>= check

addOneorTwo :: Int -> [Int]
addOneorTwo x = [x+1, x+2]

ex1 :: [Int]
ex1 = [10, 20, 30] >>= addOneorTwo

-- ghci> return "WHAT" :: Maybe String
-- Just "WHAT"
-- ghci> Just 9 >>= \x -> return (x*10)
-- Just 90

computationA :: IO ()
computationA = print "satu"

computationB :: IO ()
computationB = print "dua"

printComp :: IO ()
printComp = do
             computationA
             computationB

printComp' :: IO ()
printComp' = computationA >> computationB

computationA2 b = b * 2

computationB2 c = c * 10

ex12 :: Integer -> Integer
ex12 = do
         computationA2
         computationB2

ex12' :: Integer -> Integer
ex12' = computationA2 >> computationB2

-- isiBind :: (Monad m, Num b) => m b -> m b -> m b
isiBind x y = x >>= \a -> y >>= \b -> return (a + b)

isiBindDo x y = do
                 a <- x
                 b <- y
                 return (a + b)

main :: IO ()
main = do
         text <- readFile "original.txt"
         appendFile "copy.txt" text -- add file content
         writeFile "copyOW.txt" text
         print "done writing"

-- ghci> (\x -> Just (x+1000)) 3
-- Just 1003

gabungkan :: [Int] -> String
gabungkan y = y >>= \x -> show x

-- ghci> return 3 >>= (\x -> Just (x+1000))
-- Just 1003
-- ghci> return "WoM" >>= (\x -> [x,x,x])
-- ["WoM","WoM","WoM"]
-- ghci> Just "move on up" >>= (\x -> return x)
-- Just "move on up"
-- ghci> [1,2,3,4] >>= (\x -> return x)
-- [1,2,3,4]
-- ghci> putStrLn "Wah!" >>= (\x -> return x)
-- Wah!

eitherFunc1 :: String -> Either String Int
eitherFunc1 "" = Left "String cannot be empty!"
eitherFunc1 str = Right $ length str

eitherFunc2 :: Int -> Either String Float
eitherFunc2 i = if i `mod` 2 == 0
  then Left "Length cannot be even!"
  else Right (fromIntegral i * 3.14159)

eitherFunc3 :: Float -> Either String [Int]
eitherFunc3 f = if f > 15.0
  then Left "Float is too large!"
  else Right [floor f, ceiling f]

runEitherFuncs :: String -> Either String [Int]
runEitherFuncs input = do
  i <- eitherFunc1 input
  f <- eitherFunc2 i
  eitherFunc3 f

-- ghci> replicate 3 5
-- [5,5,5]
-- ghci> replicate 5 "aa"
-- ["aa","aa","aa","aa","aa"]
-- ghci> replicate 5 'a'
-- "aaaaa"
-- ghci>