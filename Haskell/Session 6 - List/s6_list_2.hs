data IntList = Empty | Cons Int IntList deriving Show

myIntList = Cons 2 (Cons (-3) (Cons 5 Empty))

-- -- Scene 2
-- keepOnlyPositive :: IntList -> IntList
-- keepOnlyPositive Empty = Empty
-- keepOnlyPositive (Cons x xs)
--         | x > 0 = Cons x (keepOnlyPositive xs)
--         | otherwise  = keepOnlyPositive xs
        
-- keepOnlyEven :: IntList -> IntList
-- keepOnlyEven Empty = Empty
-- keepOnlyEven (Cons x xs)
--         | even x = Cons x (keepOnlyEven xs)
--         | otherwise  = keepOnlyEven xs

-- -- End of Scene 2

-- built-in function 
-- filter odd [1,2,3,4,5,6,7]

-- -- Scene 3
-- data List t = E | C t (List t) deriving Show

-- lst1 :: List Int 
-- lst1 = C 3 (C 5 (C 2 E))
-- lst2 :: List Char 
-- lst2 = C 'x' (C 'y' (C 'z' E))
-- lst3 :: List Bool 
-- lst3 = C True (C False E)

-- -- End of Scene 3

-- Scene 4
data List t = E | C t (List t ) deriving Show
-- Membuat fungsi filter
filterList :: (t -> Bool) -> List t -> List t
filterList _ E = E
filterList p (C x xs)
        | p x           = C x (filterList p xs)
        | otherwise  = filterList p xs

myList = C 2 (C (-3) (C 5 E))

--
mapList :: (a -> b) -> List a -> List b
mapList f (C x xs)      = C (f x) (mapList f xs)
mapList f E             = E

double x = 2 * x
--

main = do
        print (filterList even myList)
        print (filterList odd myList)
        print (mapList double myList)
