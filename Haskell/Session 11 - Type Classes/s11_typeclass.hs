class CekIsi a where
        meth :: a -> String

instance CekIsi Int where
        meth x = "valuenya adalah Int"

instance CekIsi Bool where
        meth x = "isinya Boolean"

x :: String 
x = meth (10 :: Int)

x2 :: String 
x2 = meth (True :: Bool)

        