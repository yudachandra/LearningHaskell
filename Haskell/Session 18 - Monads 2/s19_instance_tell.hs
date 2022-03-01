import Control.Monad.Trans.Writer (runWriter, tell, Writer)

instance Num (Writer String Int) where
    fromInteger i = return (fromIntegral i)
    wa + wb = do
                 a <- wa
                 b <- wb
                 tell $ "Adding " ++ show a ++ " and " ++ show b ++ "\n"
                 return $ a + b
    wa - wb = do
                 a <- wa
                 b <- wb
                 tell $ "Substracting " ++ show a ++ " and " ++ show b ++ "\n"
                 return $ a - b

-- resultWithLog :: Writer String Int 
-- result 