-- TASK day 17
-- Ada sebuah function database yg terdiri dari list data type sbb

data User =  User { name :: String , classnumber :: String } deriving (Show)
 
database :: [(Integer, User)]
database = [
            (1, (User { name = "Rossa" , classnumber = "2-1" })),
            (2,  (User { name = "Rudi" , classnumber = "2-2" })),
            (3,  (User { name = "Cahyo" , classnumber = "1-4" })),
            (4,  (User { name = "Melisa" , classnumber = "3-7" }))
           ]

-- 1. Main function
-- signaturenya :   findStudent :: Integer -> String

-- dimana main function itu akan menjalankan lookup ke database
-- Sebagaimana function look up diatas, maka akan menghasilkan result maybe
-- Jadi kita perlu helper function untuk mengeluarkan value data data maybe tersebut

-- 2.Helper function 1 (untuk extract data dari maybe)
-- signaturenya : extractMaybe :: Maybe User -> String

-- untuk mengextract data maybe yg didapatkan dari database data type
-- result yg diinginkan dari function extractMaybe yg akan memforward ke helper function 2 getValue

-- 3.Helper function 2 (extract value dari data type user)
-- signaturenya :  getValue :: User -> String

-- hasil yg diinginkan dari keseluruhan function adalah sbb:

-- ghci> findStudent 2
-- "Student Name : Rudi, class : 2-2"

-- ghci> findStudent 4
-- "Student Name : Melisa, class : 3-7"

-- ghci> findStudent 40
-- "Data not found"

-- main :: IO ()
-- main = do
    
-- mapToMaybe :: (Maybe User -> Maybe User) -> (String -> String)
-- mapToMaybe Nothing = Nothing 
-- mapToMaybe Just string = functiondeh (Just string)

-- greetUser :: Integer -> Maybe String 
-- greetUser record = mapToMaybe ("Hello, " ++) (lookup record database)

extractMaybe :: Maybe User -> String
extractMaybe Nothing = "Oops, Data Not Found!"
extractMaybe Just database = "Good"