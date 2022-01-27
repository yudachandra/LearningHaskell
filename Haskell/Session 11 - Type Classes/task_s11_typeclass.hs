-- Task 1
-- apa type data dari data dibawah ini ?  

-- A.   ['a','b','c']
-- B.   ('a','b','c')
-- C.   [(False,'0'),(True,'1')]
-- D.   ([False, True],['0','1'])
-- E.   [tail, init, reverse]

-- Task 2 
-- Apa type / signature dari fungsi dibawah ini ? 

-- A.  second xs = head (tail xs)
-- B.  swap (x,y) = (y,x)
-- C.  pair x y = (x,y)
-- D.  double x = x * 2
-- E.  palindrome xs = reverse xs == xs
-- F.  twice f x = f (f x)

second :: [a] -> a
second xs = head (tail xs)
-- second [1,2,3,4]

swap :: (x,y) -> (y,x)
swap (x,y) = (y,x)
-- swap (10,20)

pair :: x -> y -> (x,y)
pair x y = (x,y) 
-- pair "a" 10

double :: Double -> Double
double x = x * 2
-- double 4

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs
--  palindrome [1,2,3]

twice :: (a -> a) -> a -> a
twice f x = f (f x)
-- twice (*2) 5

haha :: [(bool, char)] -> Int
haha a = 1
