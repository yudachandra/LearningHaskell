data Menu = Menu { menuName :: String, jmlMenu :: Int, menuPrice :: Int } deriving Show
data Status = Yes | No deriving Show

addOrder :: String -> Int -> Int -> Menu
addOrder namamenu jmlmenu hargasatuan = Menu {menuName = namamenu, jmlMenu = jmlmenu, menuPrice = totalprice}
                                        where totalprice = jmlmenu * hargasatuan

statusOrder :: Status -> Bool
statusOrder Yes = True
statusOrder No = False

namaPesanan::[Menu]
namaPesanan = []

main :: IO()
main = do
        putStrLn "\n====Selamat Datang di Haskell Resto===="
        putStrLn "\n||\tSilahkan Masukan Nama Menu : \t||"
        namaMenu <- getLine

        putStrLn "\nJumlah yang ingin dibeli : "
        jmlMenu <- getLine

        putStrLn "\nHarga Satuan : "
        hargaSatuan <- getLine
        let namaPesanan = addOrder namaMenu (read jmlMenu) (read hargaSatuan)

        putStrLn "\n====Pesanan anda adalah===="
        print namaPesanan
        putStrLn "\n====Sedang diproses==="

        putStrLn "\n\nApakah Anda Sudah Selesai Memesan? [Y]Yes/[N]No (Default Yes)"
        statusOrder <- getLine
        if statusOrder == "" then putStrLn "\nTerima Kasih, Silahkan Menunggu" 
        else if statusOrder == "" then putStrLn ""
        else main