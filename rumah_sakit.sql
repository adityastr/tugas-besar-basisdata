create database rumah_sakit;
show databases;
use rumah_sakit;
show tables;


create table dokter (
id_dokter varchar(6) not null,
nama_dokter varchar(35) not null,
no_telepon varchar(13) not null,
alamat varchar(50) not null,
spesialis varchar(50) not null,
primary key (id_dokter));
alter table dokter add column waktu_input timestamp default current_timestamp;
alter table dokter add column jadwal varchar(5) not null after spesialis;
desc dokter;
insert into dokter (id_dokter, nama_dokter, no_telepon, alamat, spesialis, jadwal) values 
('D0001', 'Dafiq', '081267767903', 'Jatisari', 'Anak', 'Malam'),
('D0002', 'Wisam', '089045123703', 'Jatibening', 'Saraf', 'Pagi'),
('D0003', 'Anggun', '081267207956', 'Jatisampurna', 'Kulit dan Kelamin', 'Malam'),
('D0004', 'Dinda', '085667254567', 'Jatiluhur', 'Mata', 'Pagi'),
('D0005', 'Daffa', '085897252050', 'Jatiluhur', 'Gigi', 'Malam'),
('D0006', 'Ardhi', '082740659106', 'Jatisari', 'Bedah','Pagi');
select * from dokter;


create table pasien (
id_pasien varchar(6) not null,
nama_pasien varchar(35) not null,
jenis_kelamin varchar(2) not null,
no_telepon varchar(13) not null,
alamat varchar(50) not null,
umur varchar(3) not null,
waktu_input timestamp default current_timestamp,
primary key (id_pasien));
desc pasien;
insert into pasien (id_pasien, nama_pasien, jenis_kelamin, no_telepon, alamat, umur) values
('P00001', 'Aditya', 'L', '086284947812', 'Jatisari', 19),
('P00002', 'Rizal', 'L', '086284047815', 'Cilangkap', 29),
('P00003', 'Nasuha', 'P', '083984547202', 'Cipayung', 18),
('P00004', 'Annisa', 'p', '088384717850', 'Jatibening', 20),
('P00005', 'Riki', 'L', '089084617853', 'Ciangsana', 25),
('P00006', 'Putra', 'L', '083984614072', 'Jatibening', 25);
select * from pasien;


create table ruang (
id_ruang varchar(6) not null,
nama_ruang varchar(35) not null,
jenis_ruang varchar(35) not null,
primary key (id_ruang));
desc ruang;
insert into ruang (id_ruang, nama_ruang, jenis_ruang) values
('R00001', 'Mawar', 'VIP'),
('R00002', 'Melati', 'Kelas 3'),
('R00003', 'Tulip', 'kelas 2'),
('R00004', 'Anggrek', 'VIP'),
('R00005', 'Matahari', 'Kelas 1'),
('R00006', 'Cendana', 'Kelas 1');
select * from ruang;


create table obat (
id_obat varchar(6) not null,
nama_obat varchar(35) not null,
jenis_obat varchar(50),
primary key (id_obat));
alter table obat add column stok_obat integer(4) unsigned not null default 0;
alter table obat modify column stok_obat integer unsigned not null default 0;
desc obat;
insert into obat (id_obat, nama_obat, jenis_obat, stok_obat) values
('O00001', 'Benzalkonium Chloride', 'spray rongga mulut, obat kumur', 20),
('O00002', 'Zoledronic Acid', 'Obat suntik', 10),
('O00003', 'Albumin', 'Dehidrasi', 25),
('O00005', 'Aspirin', 'Nyeri otot, sakit kepala', 25);
select * from obat;
