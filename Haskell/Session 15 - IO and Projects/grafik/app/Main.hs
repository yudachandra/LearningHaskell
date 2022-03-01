import Graphics.Gloss

-- module Main where

main :: IO ()
-- main = putStrLn "Hello, Haskell!"
main = display window background drawing
        where
            window = InWindow "Nice Window" (200, 200) (0, 0)
            background = white
            -- drawing = Circle 80
            -- drawing = circleSolid 80 -- jadi solid hitam
            -- drawing = color red (circleSolid 80) -- jadi solid merah
            drawing = picture

-- picture = pictures [
--                     color blue (circleSolid 20),
--                     color red (circleSolid 5)
--                     ]

-- picture = pictures [
--                     translate 100 100 (color blue (circleSolid 20)), -- ganti koordinat
--                     translate 0 100 (color red (circleSolid 5)) -- ganti koordinat
--                     ]

-- picture = translate 50 0 triangle

-- -- triangle = line [(0, 0),(0, 70)]

-- triangle = line [(0,0),(10,-7),(-10,-70),(0,0)]


picture = pictures [
                    -- translate 100 100 (color blue (circleSolid 20)), -- ganti koordinat
                    -- translate 0 100 (color red (circleSolid 5)), -- ganti koordinat
                    -- segitiga
                    star
                    ]

-- segitiga = polygon [(-75,-100),(0,87),(75,-100)]

-- Task 1 - perbaiki star nya
star = polygon [
    (20,0),
    (10,20),
    (40,20),
    (20,0),
    (30,-30),
    (0,-10),
    (-30,-20),
    (-20,0),
    (-20,-20),
    (-30,20),
    (-20,20),
    (-10,20),
    (20,10)
    ]

-- Task 2 - Bikin bendera amerika, star nya 6, garis merah putih 3 3