show databases;

create database rumah_sakit;

use rumah_sakit;

show tables;
create table dokter (
id_dokter varchar(6) not null,
nama_dokter varchar(35) not null,
no_telepon integer(13)unsigned not null,
alamat varchar(50) not null,
spesialis varchar(50) not null
);

describe dokter;

alter table dokter add column waktu_input timestamp default current_timestamp;

alter table dokter modify column no_telepon varchar(15) not null;

alter table dokter add column jadwal varchar(5) not null after spesialis;

select * from dokter;
 
insert into dokter (id_dokter, nama_dokter, no_telepon, alamat, spesialis) values
('D00002', 'Dafiq', '081267767903', 'Jatisari', 'Anak'),
('D00003', 'Wisam', '089045123703', 'Jatibening', 'Saraf'),
('D00004', 'Anggun', '081267207956', 'Jatisampurna', 'Kulit dan Kelamin'),
('D00005', 'Dinda', '085667254567', 'Jatiluhur', 'Mata');

update dokter
set nama_dokter='Ardhi'
where id_dokter='D00001';

update dokter
set jadwal='Pagi'
where id_dokter='D00004';

update dokter
set jadwal='Malam'
where id_dokter='D00005';

create table pasien (
id_pasien varchar(6) not null,
nama_pasien varchar(35) not null,
jenis_kelamin varchar(2) not null,
no_telepon integer(13)unsigned not null,
alamat varchar(50) not null,
umur integer(3) unsigned not null,
primary key (id_pasien)
);

alter table pasien add column waktu_input timestamp default current_timestamp;

alter table pasien modify column umur integer(3) not null,
modify column no_telepon varchar(13) not null;

desc pasien;

insert into pasien (id_pasien, nama_pasien, jenis_kelamin, no_telepon, alamat, umur) values
('P00001', 'Aditya', 'L', '086284947812', 'Jatisari', 19),
('P00002', 'Rizal', 'L', '086284047815', 'Cilangkap', 29),
('P00003', 'Nasuha', 'P', '083984547202', 'Cipayung', 18),
('P00004', 'Annisa', 'p', '088384717850', 'Jatibening', 20),
('P00005', 'Riki', 'L', '089084617853', 'Ciangsana', 25);

create table ruang (
id_ruang varchar(6) not null,
nama_ruang varchar(35) not null,
jenis_ruang varchar(35) not null,
primary key (id_ruang)
);

insert into ruang (id_ruang, nama_ruang, jenis_ruang) values
('R00001', 'Mawar', 'VIP'),
('R00002', 'Melati', 'Kelas 3'),
('R00003', 'Tulip', 'kelas 2'),
('R00004', 'Anggrek', 'VIP'),
('R00005', 'Matahari', 'Kelas 1');

select * from ruang;

describe ruang;


create table obat (
id_obat varchar(6) not null,
nama_obat varchar(35) not null,
jenis_obat varchar(50),
primary key (id_obat)
);

alter table obat add column jumlah integer(3) unsigned not null default 0;

desc obat;

insert into obat (id_obat, nama_obat, jenis_obat, jumlah) values
('O00001', 'Benzalkonium Chloride', 'spray rongga mulut, obat kumur', 20),
('O00002', 'Zoledronic Acid', 'Obat suntik', 10),
('O00003', 'Albumin', 'Dehidrasi', 25),
('O00005', 'Aspirin', 'Nyeri otot, sakit kepala', 25);

select * from obat;