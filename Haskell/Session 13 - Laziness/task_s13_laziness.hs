-- import Distribution.Simple.Utils (xargs)
-- -- TASK 1

-- -- Buat function yg bisa menambah list ketika dimasukan yg sebuah value yg baru, listnya jenisnya String, dan hasil yg diharapkan sbb, jadi ada oldvalue dan ada new value, newvalue akan menambah oldvalue

-- -- Untuk awalnya oldvalue bisa di set sebagai empty list, boleh dibuat lebih dari 1 function, utk membantu proses penambahan data / elemen dari list

-- -- ghci> main

-- -- menu
-- -- a> Add New List    d> Done
-- -- a
-- -- Insert new value : Data ke 1

 
-- -- menu
-- -- a> Add New List    d> Done
-- -- a
-- -- Insert new value : Data ke 2

 
-- -- menu
-- -- a> Add New List    d> Done
-- -- a
-- -- Insert new value : Data ke 3

-- -- menu
-- -- a> Add New List  d> Done
-- -- d


-- -- ["Data ke 1"," Data ke 2"," Data ke 3"]

-- addNewList :: String -> [String]
-- addNewList x = []
-- -- addNewList x
-- --     | addNewList 
-- --     |

-- stringList :: [String]
-- stringList = []

-- -- getOption :: String
-- -- getOption 
-- --     | "a" = addNewList
-- --     | otherwise          = n

-- main = do
--     putStrLn "Add New List! [a] to add/ [d] to done, default was d"
--     stringList <- fmap words getLine -- String to Int
    
--     print "Step 1, Drop last digit from the number. Let's call this the check digit"
--     -- print (dropLast creditNo)
--     print "Step 2, Reverse the numbers"
--     -- print (cnRev creditNo)
--     print "Step 3, Multiply the digits in odd positions (1,3,5, etc.) by 2"
--     -- print (doubleEveryOther $ cnRev creditNo)
--     print "Step 4, Subtract 9 to all any result higer than 9"
--     -- print (plotMoreThan9 $ doubleEveryOther $ cnRev creditNo)
--     print "Step 5, Add all the numbers together"
--     -- print (sumDigits $ plotMoreThan9 $ doubleEveryOther $ cnRev creditNo)
--     print "Step 6, Add the check digit to the sum"
--     -- print ((sumDigits $ plotMoreThan9 $ doubleEveryOther $ cnRev creditNo) + last (cnts creditNo))
--     print "Step 7, Check if the total sum can be divided by 10"
--     -- putStrLn $ isValid creditNo
    


--  insertNewList :: [String] -> IO()
--  insertNewList oldvalue = do
--                      putStrLn "Masukan Data"
--                      newValue <- getLine 
--                      let allList = oldvalue ++ [newValue]
--                      print allList
--                      insertNewList allList

main :: IO()
main = addList []

addList :: [String] -> IO()
addList oldValue = do
                    putStrLn "\na> Add New List d> Done"
                    pilihanMenu <- getLine 
                    case pilihanMenu of
                        "a" -> do
                                putStr "Insert new value : "
                                newValue <- getLine 
                                let newValueList = oldValue ++ (newValue : [])
                                print newValueList
                                addList newValueList
                        "d" -> print oldValue
                        _    -> do
                                putStrLn "Please choose first letter from menu!"
                                print oldValue
                                addList oldValue