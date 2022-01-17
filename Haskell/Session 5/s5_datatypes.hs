import Language.Haskell.TH (javaScript)
import Control.Arrow (ArrowChoice(right))
import Distribution.Fields.LexerMonad (LexWarning(LexWarning))
import Control.Monad.ST (ST)
import Data.Text.Encoding.Error (OnDecodeError)
data IntList = Empty | Cons Int IntList deriving Show

intListProduct :: IntList -> Int
intListProduct Empty = 1
intListProduct (Cons head list) = head * intListProduct list

-- (Cons 5 (Cons 3 Empty))

intListProductx :: [Int] -> Int
intListProductx (x:xs) = x * product xs

--
data Tree = Leaf Int
                | Node Tree Int Tree
                deriving Show

dummyTree :: Tree
dummyTree = Node (Leaf 2) 1 (Node (Leaf 4) 3 (Leaf 5))
--
findInTree :: Int -> Tree -> Bool 
findInTree i (Leaf j) = i == j
findInTree i (Node left j right) =
        i == j
        || findInTree i left
        || findInTree i right
        -- findInTree 1 dummyTree (running ini)

--Log Parsing Code
data MessageType = Info
                | Warning
                | Error Int 
                deriving (Show, Eq)

type TimeStamp = Int 

data LogMessage = LogMessage MessageType TimeStamp String 
                | Unknown String 
                deriving (Show, Eq)

parseLog :: String -> LogMessage
parseLog logContents = case (words logContents) of
        "I" : timeStamp : stringMessage ->
                LogMessage Info (read timeStamp) (unwords stringMessage)
        "W" : timeStamp : stringMessage ->
                LogMessage Warning (read timeStamp) (unwords stringMessage)
        "E" : errorCode : timeStamp : stringMessage ->
                let     arg1 = Error (read errorCode)
                        arg2 = read timeStamp
                        arg3 = unwords stringMessage
                in LogMessage arg1 arg2 arg3
        stringMessage ->
                Unknown (unwords stringMessage)
-- parseLog "I 29 HDD Capacity 100%"
-- parseLog "unknown"
-- lines "I 42 info\nW 89 warning\nE 100 12 error\n"
-- map (+10) [1,2,3,4]
-- lines "a\nb\nc"
-- words "a b c"

--
-- data MessageTree = Leaf
--                 | Node MessageTree LogMessage MessageTree
--                 deriving (Show, Eq)


-- Kosong, cari di Video 73'-79'
-- parseLog' :: String -> [LogMessage]
-- parseLog' rawContents = map parseSingleLog (lines rawContents)

-- parseSingleLog :: String -> LogMessage
-- parseSingleLog str = case words str of
--         "I" timestamp:wordsInLog -> makeLog Info timestamp

--Lanjut

