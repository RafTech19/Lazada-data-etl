-- Milestone 1 Data Scraping
-- Nama  : Muhammad Rafli Febriyanto
-- Batch : CODA RMT-015
-- Program ini dibuat untuk membuat database dengan data berupa hasil web scraping produk Samsung di Lazada

-- Membuat database data_scraping
CREATE DATABASE data_scraping;

-- Membuat tabel dan mendefinisikan tipe data masing - masing kolom (DDL)
CREATE TABLE samsung_product (
    id SERIAL PRIMARY KEY, 
	nama VARCHAR, 
	harga INT, 
	diskon FLOAT, 
	terjual INT, 
	kota VARCHAR, 
	url_produk VARCHAR
);

SELECT * FROM samsung_product

-- Import file csv yang sudah dibuat dari VSCODE (DML)
copy samsung_product(nama, harga, diskon, terjual, kota, url_produk)
from 'C:\temp\data_bersih_samsung_lazada.csv'
delimiter ','
csv header;

SELECT * FROM samsung_product;




