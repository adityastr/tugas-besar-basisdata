show databases;
create database universitas;
use universitas;


-- Table Mahasiswa
create table Mahasiswa (NPM int(8) not null, Nama_Mahasiswa varchar (50) not null, Alamat varchar (50) not null);
show tables;
insert into Mahasiswa (NPM,Nama_mahasiswa,Alamat) values 
(10296832,'Nurhayati','Jakarta'),
(10296126,'Astuti','Jakarta')
,(31296500,'Budi','Depok'),
(41296525,'Prananingrum','Bogor'),
(50096487,'Pipit','Bekasi'),
(21196353,'Quraish','Bogor');
update Mahasiswa set alamat='Depok' where NPM=50096487;

alter table Mahasiswa add primary key (NPM);
describe Mahasiswa;
select * from Mahasiswa;


create table Matakuliah (KDMK varchar(5) not null, MTKULIAH varchar (25) not null, SKS varchar (10) not null);
show tables;
insert into Matakuliah (KDMK,MTKULIAH,SKS) values
('KK021','P. Basis Data','2'),
('KD132','SIM','3'),
('KU122','Pancasila','2');

select * from Matakuliah;


create table Nilai (NPM varchar (30) not null, KDMK varchar (20) not null, MID varchar (15) not null, FINAL varchar (15) not null);
describe Nilai;
show tables;
insert into Nilai (NPM,KDMK,MID,FINAL) values
('10296832','KK021','60','75'),
('10296126','KD132','70','90'),
('31296500','KK021','55','40'),
('41296525','KU122','90','80'),
('21196353','KU122','75','75'),
('50096487','KD132','80','0'),
('10296832','KD132','40','30');
alter table Nilai drop column NPM;
alter table Nilai add constraint FK_NPM foreign key (NPM) references Mahasiswa (NPM);

select * from Nilai;

delete from Nilai where KDMK='KK021' and NPM='';
