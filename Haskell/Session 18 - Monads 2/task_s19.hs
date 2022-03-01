
import Control.Monad.Trans.State (execState, get, modify, State)

g :: State Int Int
g = do
    modify (* 15000)
    get

main :: IO ()
main = do
        putStrLn "Masukan Nilai Dollar : "
        inputNilai <- readLn
        
        putStrLn "Hasil Konversi adalah : "
        print (execState g inputNilai)
