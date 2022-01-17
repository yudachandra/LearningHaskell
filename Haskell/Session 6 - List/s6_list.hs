data IntList = Empty | Cons Int IntList deriving Show

mapIntList :: (Int -> Int) -> IntList -> IntList
mapIntList _ Empty = Empty
mapIntList f (Cons x xs) = Cons (f x) (mapIntList f xs)

addOne x = x + 1

square x = x * x

-- myIntList = Cons 2 (Cons (-3) (Cons 5 Empty))

-- absAll :: IntList -> IntList
-- absAll Empty = Empty 
-- absAll (Cons x xs) = Cons (abs x) (absAll xs)

-- squareAll :: IntList -> IntList
-- squareAll (Cons x xs) = Cons (x * x) (squareAll xs)

addOneToAll xs = mapIntList addOne xs
absAll xs = mapIntList abs xs
squareAll xs = mapIntList square xs

myIntList = Cons 2 (Cons (-3) (Cons 5 Empty))

main :: IO ()
main = do
        print (addOneToAll myIntList)
        print (absAll myIntList)
        print (squareAll myIntList)