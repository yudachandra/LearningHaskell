import Distribution.Simple.Utils (warn)
import System.Win32 (COORD(y))
import Control.Applicative.Lift (failure)

data Color = Red
                | Black
                | Green
                | Blue
                | Pink
                | Yellow
                | Off
                deriving Show

lukeLightSaberColor :: Color
lukeLightSaberColor = Yellow

listOfColors :: [Color]
listOfColors = [Red, Black]

warnaLampuMerah :: Color -> Bool
warnaLampuMerah Red = True
warnaLampuMerah Green = True
warnaLampuMerah Yellow = True
warnaLampuMerah Off = True
warnaLampuMerah _ = False

type Warna = (Color, String)
warnaKesukaan :: Color
warnaKesukaan = Red

warnaKesukaanSiapa :: Warna
warnaKesukaanSiapa = (Blue, "Aduy")

tebakWarna :: Warna -> String 
tebakWarna (x,y) = "Pemilik warna " ++ show x ++ " adalah " ++ y

simpanNamaWarna :: Color -> String -> Warna
simpanNamaWarna x1 x2 = (x1,x2)

data FailableDouble = Failure 
                    | OK Double deriving Show

oops :: FailableDouble
oops = Failure

notOops :: FailableDouble
notOops = OK 3.4

data CekDoubleKah = BukanDouble | BenarDouble Double deriving Show

safeDiv :: Double -> Double -> CekDoubleKah
safeDiv _ 0 = BukanDouble
safeDiv x y = BenarDouble (x/y)

failureToZero :: CekDoubleKah -> Double 
failureToZero BukanDouble = 0
failureToZero (BenarDouble d) = d

cekNilai :: Double -> Double -> Double
cekNilai x y = failureToZero (safeDiv x y)
-- sama dengan 
-- cekNilai x y = failureToZero $ safeDiv x y

-- data Color = Red | Black | Blue deriving Show
-- data Person = Person String Int Color deriving Show
-- data Status = Yes | No deriving Show

-- john :: Person
-- john = Person "john" 10 Red

-- getAge :: Person -> Int
-- getAge (Person _ z _) = z