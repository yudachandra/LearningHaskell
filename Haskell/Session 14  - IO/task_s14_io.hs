-- TASK  day 14

-- Buat sebuah aplikasi kecil tentang daftar siswa, yang disimpan di dalam record type data yg disimpan dalam sebuah list dengan ketentuan sbb:
-- 1.Ada menu untuk memilih proses apa yg dikehendaki
--      Pilih menu : (a) Tambah Murid & Nilai     (b) Cetak List Murid      (q) Keluar

-- a. Tambah Murid & Nilai
--      Masukan nama murid ?  Budi
--      Kelas ? IV
--      Nilai ?  100

-- b. Cetak semua daftar murid dan nilai mereka dalam sebuah table sederhana, dengan recursive, ada status lulus jika nilai diatas 60 dan tidak jika dibawah 60, setelah dicetak seperti dibawah ini, maka kembali ke menu pilihan
-- ----------------------------------------------------------------
-- No. |  Nama     |       Kelas      |     Nilai    |  Lulus
-- ---------------------------------------------------------------
-- 1         Budi                IV                    100         Y
-- 2         Rudi                III                    80            Y
-- 3         Ucok               V                     45            N

-- ---------------------------------------------------------------

-- c.jika dipilih q, maka keluar dari aplikasi

-- contoh bentuk data
-- [
-- Murid {nama = "satu", kelas = "1", nilai = 100},
-- Murid {nama = "2", kelas = "2", nilai = 90}
-- ]

-- hint : pakai head untuk print kemudian tambahkan spasi

