# KKP-SKRIPSI-Kelompok

## A. ERD

![](foto_tk/gambar%20erd%20new.png)

## B. DDL

KOSONG

## C. SQL CRUD
### (Create) Membuat databases, Tabel, dan memasukkan data
#### 1. Membuat Database

![create](foto_tk/create%20%26%20use%20databs.png)

#### 2. Membuat Table pada Database
1. Tabel Mahasiswa

![](foto_tk/tabel/tabel%20mahasiswa.png)

2. Tabel Dosen

![](foto_tk/tabel/tabel%20dosen.png)

3. Tabel Bimbingan

![](foto_tk/tabel/tabel%20bimbingan.png)

4. Tabel Jadwal Bimbingan

![](foto_tk/tabel/tabel%20jadwal%20bimbingan.png)

5. Tabel Laporan Transaksi

![](foto_tk/tabel/tabel%20laporan_transaksi.png)

#### 3 Memasukan Data pada Table
1. Tabel Mahasiswa

![](foto_tk/insert/insert%20mahasiswa.png)

2. Tabel Dosen

![](foto_tk/insert/insert%20dosen.png)

3. Tabel Bimbingan

![](foto_tk/insert/insert%20bimbingan.png)

4. Tabel Laporan Transaksi

![](foto_tk/insert/insert%20laporan%20transaksi.png)

#### 4 constraint bimbingan

1. Menambahan constraint tabel bimbingan (ID_Mahasiswa) referensi tabel mahasiswa dan tabel bimbingan (ID_Dosen) referensi tabel dosen

![](foto_tk/constraint/constraint%20bimbingan.png)

2. Menambahan constraint tabel jadwal_bimbingan (ID_Bimbingan) referensi tabel bimbingan

![](foto_tk/constraint/constraint%20jadwal%20bimbingan.png)

3. Menambahan constraint tabel laporan_transaksi (ID_Mahasiswa) referensi tabel mahasiswa 

![](foto_tk/constraint/constraint%20laporan%20transaksi.png)

### R (READ) Membaca atau melihat data dari database
1. Tabel Mahasiswa

![](foto_tk/desc/mahasiswa.png)

2. Tabel Dosen

![](foto_tk/desc/dosen.png)

3. Tabel Bimbingan

![](foto_tk/desc/bimbingan.png)

4. Tabel Jadwal Bimbingan

![](foto_tk/desc/jadwal%20bimbingan.png)

5. Tabel Laporan Transaksi

![](foto_tk/desc/laporan%20transaksi.png)

### U (Update) Mengubah data yang sudah ada
1. update data dosen

![](foto_tk/update/update%20dosen.png)

### D (Delete) Menghapus data atau kolom pada database
1. delete data dosen where id_dosen = 4348, Elma
Cannot delete or update a parent row: a foreign key constraint fails (`tgs_klompok`.`bimbingan`, CONSTRAINT `bimbingan_ibfk_2` FOREIGN KEY (`ID_Dosen`) REFERENCES `dosen` (`ID_Dosen`))


## SQL JOIN

## Join antara tabel Bimbingan dengan Mahasiswa bedasarkan ID_Mahasiswa yang menampilkan tabel yang sudah menyerahkan kkp 
SELECT Bimbingan.*, Mahasiswa.Nama_Mahasiswa
FROM Bimbingan
JOIN Mahasiswa ON Bimbingan.ID_Mahasiswa = Mahasiswa.ID_Mahasiswa;
WHERE Catatan = 'kkp sudah diserahkan'
![]()

## Join antara tabel Bimbingan, Mahasiswa dan Dosen bedasarkan ID_Dosen yang menampilkan tabel bedasarkan Nama_Dosen
SELECT Bimbingan.*, Mahasiswa.Nama_Mahasiswa, Dosen.Nama_Dosen
FROM Bimbingan
JOIN Mahasiswa ON Bimbingan.ID_Mahasiswa = Mahasiswa.ID_Mahasiswa
JOIN Dosen ON Bimbingan.ID_Dosen = Dosen.ID_Dosen;
WHERE Nama_Dosen = 'Purnama';

## Menampilkan Nama Mahasiswa bedasarkan Program Studi yang ditampuh ''
SELECT Nama_Mahasiswa, NIM, Program_Studi
FROM Mahasiswa 
WHERE Program_Studi = 'Teknik Informatika';
![]

## Join antara tabel Bimbingan, Jadwal_Bimbingan, dan Mahasiswa bedasarkan ID_Bimbingan yang menampilkan tabel yang bedasarkan Waktu Bimbingan
SELECT Bimbingan.*, Jadwal_Bimbingan.Tanggal, Jadwal_Bimbingan.Waktu, Mahasiswa.Nama_Mahasiswa
FROM Bimbingan
JOIN Jadwal_Bimbingan ON Bimbingan.ID_Bimbingan = Jadwal_Bimbingan.ID_Bimbingan
JOIN Mahasiswa ON Bimbingan.ID_Mahasiswa = Mahasiswa.ID_Mahasiswa
WHERE Waktu = '09:00:00';
