-- 0. Drop sdm database
DROP DATABASE sdm;

-- 1. Create new database with name sdm
CREATE DATABASE sdm;

-- 2. Create table karyawan
CREATE TABLE sdm.karyawan (
  nik VARCHAR (16),
  nama_karyawan VARCHAR (50),
  level_jabatan INTEGER,
  tanggal_lahir DATE
);

-- 3.1 Insert Into Values (1)
INSERT INTO
  sdm.karyawan
VALUES
  ("A01", "Andi", 2, "1997-09-08");

-- 3.2 Insert Into Values (2)
INSERT INTO
  sdm.karyawan (nik, nama_karyawan, level_jabatan, tgl_lahir)
VALUES
  ("A03", "Arif", 3, "1990-09-08");

-- 4.1 SELECT table (all)
SELECT
  *
FROM
  sdm.karyawan;

-- 4.2 SELECT table (certain column)
SELECT
  nik
FROM
  sdm.karyawan;

-- 5. Alias
SELECT
  nik AS ID_Karyawan
FROM
  sdm.karyawan;

-- 6. Can't insert values that not consistent with table defitnition
INSERT INTO
  sdm.karyawan (nik, nama_karyawan, level_jabatan, tgl_lahir)
VALUES
  (
    "ABCDEFGHIJ123456789",
    "Rifai",
    3,
    "1990-09-08"
  );

-- 7. ENUM
DROP TABLE sdm.karyawan;

CREATE TABLE sdm.karyawan (
  nik VARCHAR (16),
  nama_karyawan VARCHAR (50),
  level_jabatan INTEGER,
  tanggal_lahir DATE,
  gol_dar ENUM ("A", "B", "AB", "O")
);

INSERT INTO
  sdm.karyawan
VALUES
  (
    "A01",
    "Andi",
    2,
    "1997-09-08",
    "A"
  );

INSERT INTO
  sdm.karyawan
VALUES
  (
    "A02",
    "Arif",
    3,
    "1990-09-08",
    "B"
  );
  
  SELECT * FROM sdm.karyawan