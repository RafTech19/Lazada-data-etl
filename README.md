# Retail Data Pipeline Project

## 💼 Deskripsi Projek
Project ini merupakan implementasi end-to-end data pipeline sederhana yang meliputi proses ETL **(Extract, Load, Transform)**. Sumber data yang digunakan berasal dari website Lazada dengan kategori produk Samsung. Data diambi dengan proses web scraping menggunakan Selenium dan Beautifulshop, kemudian data diolah dan dibersihkan dengan pandas, dan dimasukkan ke dalam database dengan PostgreSql (PgAdmin). 

## 🎯 Tujuan Projek
Tujuan dari projek ini adalah :
- Mengambil minimal 50 data produk Samsung dari website Lazada
- Membersihkan dan memastikan tipe data sesuai (numerik, teks, dan lainnya)
- Membuat struktur database sesuai dengan data yang sudah diolah
- Menyimpan data ke dalam database dengan PgAdmin

## 🧠 Struktur Projek
**CODA_P0M1_muhammad-rafli.ipynb** : Notebook berisi proses web scraping, data cleaning, dan transformation

**CODA_P0M1_muhammad-rafli.sql** : Script SQL untuk membuat struktur tabel dan menyimpan data hasil extract ke dalam database

**data_kotor_samsung_lazada** : Data hasil scraping sebelum dilakukan data cleaning (data kotor)

**data_bersih_samsung_lazada** : Data setelah melalui proses cleaning dan transformation

## 🛠️ Tools & Teknologi
- Python
- Pandas
- Selenium
- Beautifulsoup
- PostgreSQL (PgAdmin)

## 🔄 Alur Pengerjaan
### 1. Extract (Web Scraping)
Proses ini mengambil data dari website Lazada yang berjenis multipage dengan Selenium dan Beautifulshop. Data yang diambil minimal 50 data dan terdiri dari minimal 4 kolom informasi. Data yang diambil berupa **nama produk, harga, diskon, jumlah terjual, kota dan url produk**. Output dari proses ini, yaitu data produk csv mentah. 
### 2. Transform (Pandas)
Proses ini meliputi pengecekan tipe data dari masing - masing kolom, membersihkan karakter non numerik pada kolom harga dan terjual, konversi tipe data ke numerik, dan handling missing values. Output dari proses ini, yaitu data produk csv yang siap dianalisis. 
### 3. Load (PgAdmin)
Proses ini meliputi pembuatan database dan tabel sesuai struktur data, menentukan tipe data yang sesuai, dan menginput data dari csv ke dalam postgreSQL
