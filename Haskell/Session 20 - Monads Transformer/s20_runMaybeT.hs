
type Stack = [String]

pop :: Stack -> (Maybe String, Stack)
pop (x:xs)  = (Just x, xs)
pop []      = (Nothing, [])

push :: String -> Stack -> ((), Stack)
push s xs = ((), s:xs)

mainLoop :: StateT Stack (Maybe IO) ()
mainLoop = do
    input <- liftIO getLine 
    if null input
        then do

ghci> 10 `elem` [1,2,3,10]
True
ghci> 101 `elem` [1,2,3,10]
False
ghci> filter even [1,2,3,4,5]
[2,4]
ghci> filter odd [1,2,3,4,5]
[1,3,5]