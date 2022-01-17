import System.Win32 (COORD(x))
-- 1
keepOnlyOdd func x = filter func x

keepOnlyOddValue _ [] = []
keepOnlyOddValue c (x:xs)
    | c x = x :keepOnlyOddValue c xs
    | otherwise  = keepOnlyOddValue c xs

-- 2
filterValue :: Integral a => [Char] -> [a] -> [a]
filterValue jenis (xs) = if jenis == "even"
                        then filter even xs
                        else filter odd xs

-- 3
addFunction c x = map c x

accumulateRec func [] = []
accumulateRec func (h:t) = (func h) : accumulateRec func t