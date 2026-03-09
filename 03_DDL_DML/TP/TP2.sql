SQL> nama: Surya Bintang Agus Putra
SP2-0734: unknown command beginning "nama: Sury..." - rest of line ignored.
SQL> --nama: Surya Bintang Agus Putra
SQL> --NIM: 103122430043
SQL> 
SQL> CREATE TABLE mahasiswa
  2  (id NUMBER PRIMARY KEY, nama VARCHAR2(50) NOT NULL, tempat_lahir VARCHAR2(30), tanggal_lahir  DATE, nomor_hp VARCHAR2(20), email VARCHAR2(50), tinggi_badan NUMBER(5,2), berat_badan NUMBER(5,2));

Table created.

SQL> desc mahasiswa
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER
 NAMA                                      NOT NULL VARCHAR2(50)
 TEMPAT_LAHIR                                       VARCHAR2(30)
 TANGGAL_LAHIR                                      DATE
 NOMOR_HP                                           VARCHAR2(20)
 EMAIL                                              VARCHAR2(50)
 TINGGI_BADAN                                       NUMBER(5,2)
 BERAT_BADAN                                        NUMBER(5,2)

SQL> 	INSERT ALL
  2    INTO mahasiswa VALUES (1, 'Amiya', 'Rim Billiton', TO_DATE('2004-12-23', 'YYYY-MM-DD'), '081200000001', 'amiya@rhodesisland.com', 142.0, 38.5)
  3    INTO mahasiswa VALUES (2, 'Nearl (Margaret)', 'Kazimierz', TO_DATE('1998-04-15', 'YYYY-MM-DD'), '081200000002', 'nearl@rhodesisland.com', 171.0, 65.0)
  4    INTO mahasiswa VALUES (3, 'SilverAsh (Enciodes)', 'Kjerag', TO_DATE('1995-01-30', 'YYYY-MM-DD'), '081200000003', 'silverash@karlantrade.com', 192.0, 85.0)
  5    INTO mahasiswa VALUES (4, 'Ch Chen', 'Lungmen', TO_DATE('1999-07-07', 'YYYY-MM-DD'), '081200000004', 'chen@lmsl.gov', 168.0, 58.0)
  6    INTO mahasiswa VALUES (5, 'Exusiai', 'Laterano', TO_DATE('2002-12-24', 'YYYY-MM-DD'), '081200000005', 'applepie@penguindeliv.com', 159.0, 49.5)
  7    INTO mahasiswa VALUES (6, 'Texas', 'Siracusa', TO_DATE('2001-06-01', 'YYYY-MM-DD'), '081200000006', 'texas@penguindeliv.com', 161.0, 52.0)
  8    INTO mahasiswa VALUES (7, 'Siege (Vina)', 'Victoria', TO_DATE('2000-05-10', 'YYYY-MM-DD'), '081200000007', 'siege@glassgow.uk', 172.0, 67.5)
  9    INTO mahasiswa VALUES (8, 'Kal''tsit', 'Unknown', TO_DATE('1900-01-01', 'YYYY-MM-DD'), '081200000008', 'kaltsit@rhodesisland.com', 169.0, 55.0)
 10    INTO mahasiswa VALUES (9, 'Skadi', 'Abyssal', TO_DATE('1997-03-03', 'YYYY-MM-DD'), '081200000009', 'skadi@aegir.com', 166.0, 60.0)
 11    INTO mahasiswa VALUES (10, 'Hoshiguma', 'Higashi', TO_DATE('1996-11-22', 'YYYY-MM-DD'), '081200000010', 'hoshiguma@lmsl.gov', 184.0, 82.0)
 12    INTO mahasiswa VALUES (11, 'Surtr', 'Unknown', TO_DATE('2003-08-14', 'YYYY-MM-DD'), '081200000011', 'surtr@icecream.com', 162.5, 51.0)
 13    INTO mahasiswa VALUES (12, 'Thorns', 'Iberia', TO_DATE('2001-09-20', 'YYYY-MM-DD'), '081200000012', 'thorns@destreza.com', 177.0, 64.0)
 14    INTO mahasiswa VALUES (13, 'Mudrock', 'Sarkaz', TO_DATE('2002-02-02', 'YYYY-MM-DD'), '081200000013', 'mudrock@gargoyle.com', 163.0, 78.0)
 15    INTO mahasiswa VALUES (14, 'Saria', 'Columbia', TO_DATE('1994-04-10', 'YYYY-MM-DD'), '081200000014', 'saria@rhine.com', 174.0, 70.0)
 16    INTO mahasiswa VALUES (15, 'Bagpipe', 'Victoria', TO_DATE('2003-10-30', 'YYYY-MM-DD'), '081200000015', 'bagpipe@rhodesisland.com', 167.0, 61.5)
 17  SELECT * FROM dual;

15 rows created.

SQL> 
SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 50;
SQL> SET TRIMSPOOL ON;
SQL> SET PAGESIZE 100;
SQL> COLUMN ID FORMAT 999;
SQL> COLUMN NAMA FORMAT A20;
SQL> COLUMN TEMPAT_LAHIR FORMAT A15;
SQL> COLUMN TANGGAL_LAHIR FORMAT A12;
SQL> COLUMN NOMOR_HP FORMAT A13;
SQL> COLUMN EMAIL FORMAT A25;
SQL> COLUMN TINGGI_BADAN FORMAT 999;
SQL> COLUMN BERAT_BADAN FORMAT 999;
SQL> select * from mahasiswa;

  ID NAMA                 TEMPAT_LAHIR    TANGGAL_LAHI NOMOR_HP      EMAIL                     TINGGI_BADAN BERAT_BADAN
---- -------------------- --------------- ------------ ------------- ------------------------- ------------ -----------
   1 Amiya                Rim Billiton    23-DEC-04    081200000001  amiya@rhodesisland.com             142          39
   2 Nearl (Margaret)     Kazimierz       15-APR-98    081200000002  nearl@rhodesisland.com             171          65
   3 SilverAsh (Enciodes) Kjerag          30-JAN-95    081200000003  silverash@karlantrade.com          192          85
   4 Ch Chen              Lungmen         07-JUL-99    081200000004  chen@lmsl.gov                      168          58
   5 Exusiai              Laterano        24-DEC-02    081200000005  applepie@penguindeliv.com          159          50
   6 Texas                Siracusa        01-JUN-01    081200000006  texas@penguindeliv.com             161          52
   7 Siege (Vina)         Victoria        10-MAY-00    081200000007  siege@glassgow.uk                  172          68
   8 Kal'tsit             Unknown         01-JAN-00    081200000008  kaltsit@rhodesisland.com           169          55
   9 Skadi                Abyssal         03-MAR-97    081200000009  skadi@aegir.com                    166          60
  10 Hoshiguma            Higashi         22-NOV-96    081200000010  hoshiguma@lmsl.gov                 184          82
  11 Surtr                Unknown         14-AUG-03    081200000011  surtr@icecream.com                 163          51
  12 Thorns               Iberia          20-SEP-01    081200000012  thorns@destreza.com                177          64
  13 Mudrock              Sarkaz          02-FEB-02    081200000013  mudrock@gargoyle.com               163          78
  14 Saria                Columbia        10-APR-94    081200000014  saria@rhine.com                    174          70
  15 Bagpipe              Victoria        30-OCT-03    081200000015  bagpipe@rhodesisland.com           167          62

15 rows selected.

SQL> 
SQL> SELECT
  2      UPPER(nama) as nama_kapital,
  3      LOWER(tempat_lahir) as asal_kecil,
  4      INITCAP(nama) as format_judul,
  5      CONCAT(nama, email) as gabung_kontak,
  6      LENGTH(nama) as hitung_huruf,
  7      SUBSTR(nama, 1, 4) as cuplikan_nama,
  8      LPAD(id, 5, '0') as id_berpola,
  9      RPAD(nama, 15, '.') as nama_titik,
 10      LTRIM('   TEKS') as bersih_kiri,
 11      RTRIM('TEKS   ') as bersih_kanan,
 12      INSTR(email, '@') as posisi_at,
 13      REPLACE(nama, 'Amiya', 'Leader') as ganti_panggilan
 14  FROM mahasiswa WHERE id <= 5;

NAMA_KAPITAL                                       ASAL_KECIL                     FORMAT_JUDUL
-------------------------------------------------- ------------------------------ --------------------------------------------------
GABUNG_KONTAK                                                                                        HITUNG_HURUF CUPLIKAN_NAMA    ID_BERPOLA
---------------------------------------------------------------------------------------------------- ------------ ---------------- --------------------
NAMA_TITIK                                                   BERS BERS  POSISI_AT
------------------------------------------------------------ ---- ---- ----------
GANTI_PANGGILAN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AMIYA                                              rim billiton                   Amiya
Amiyaamiya@rhodesisland.com                                                                                     5 Amiy             00001
Amiya..........                                              TEKS TEKS          6
Leader

NEARL (MARGARET)                                   kazimierz                      Nearl (Margaret)
Nearl (Margaret)nearl@rhodesisland.com                                                                         16 Near             00002
Nearl (Margaret                                              TEKS TEKS          6
Nearl (Margaret)

SILVERASH (ENCIODES)                               kjerag                         Silverash (Enciodes)
SilverAsh (Enciodes)silverash@karlantrade.com                                                                  20 Silv             00003
SilverAsh (Enci                                              TEKS TEKS         10
SilverAsh (Enciodes)

CH CHEN                                            lungmen                        Ch Chen
Ch Chenchen@lmsl.gov                                                                                            7 Ch C             00004
Ch Chen........                                              TEKS TEKS          5
Ch Chen

EXUSIAI                                            laterano                       Exusiai
Exusiaiapplepie@penguindeliv.com                                                                                7 Exus             00005
Exusiai........                                              TEKS TEKS          9
Exusiai


SQL> SELECT
  2      nama,
  3      TO_CHAR(tanggal_lahir, 'MM') as angka_bulan,
  4      TO_CHAR(tanggal_lahir, 'MON') as kode_bulan,
  5      TO_CHAR(tanggal_lahir, 'MONTH') as nama_bulan,
  6      TO_CHAR(tanggal_lahir, 'DD') as tgl_saja,
  7      TO_CHAR(tanggal_lahir, 'DY') as kode_hari,
  8      TO_CHAR(tanggal_lahir, 'YYYY') as tahun_penuh,
  9      TO_CHAR(SYSDATE, 'HH24:MI:SS AM') as jam_sekarang,
 10      ADD_MONTHS(tanggal_lahir, 3) as tiga_bulan_kemudian,
 11      SYSDATE as tgl_server,
 12      LAST_DAY(tanggal_lahir) as akhir_bulan,
 13      NEXT_DAY(tanggal_lahir, 'MONDAY') as senin_depan,
 14      MONTHS_BETWEEN(SYSDATE, tanggal_lahir) as selisih_usia,
 15      ROUND(tanggal_lahir, 'MONTH') as bulatkan_bulan,
 16      ROUND(tanggal_lahir, 'YEAR') as bulatkan_tahun
 17  FROM mahasiswa WHERE id <= 5;

NAMA                 AN KODE_BULAN   NAMA_BULAN                           TG KODE_HARI    TAHU JAM_SEKARAN TIGA_BULA TGL_SERVE AKHIR_BUL SENIN_DEP SELISIH_USIA BULATKAN_ BULATKAN_
-------------------- -- ------------ ------------------------------------ -- ------------ ---- ----------- --------- --------- --------- --------- ------------ --------- ---------
Amiya                12 DEC          DECEMBER                             23 THU          2004 16:48:47 PM 23-MAR-05 08-MAR-26 31-DEC-04 27-DEC-04   254.538727 01-JAN-05 01-JAN-05
Nearl (Margaret)     04 APR          APRIL                                15 WED          1998 16:48:47 PM 15-JUL-98 08-MAR-26 30-APR-98 20-APR-98   334.796792 01-APR-98 01-JAN-98
SilverAsh (Enciodes) 01 JAN          JANUARY                              30 MON          1995 16:48:47 PM 30-APR-95 08-MAR-26 31-JAN-95 06-FEB-95   373.312921 01-FEB-95 01-JAN-95
Ch Chen              07 JUL          JULY                                 07 WED          1999 16:48:47 PM 07-OCT-99 08-MAR-26 31-JUL-99 12-JUL-99   320.054856 01-JUL-99 01-JAN-00
Exusiai              12 DEC          DECEMBER                             24 TUE          2002 16:48:47 PM 24-MAR-03 08-MAR-26 31-DEC-02 30-DEC-02   278.506469 01-JAN-03 01-JAN-03

SQL> SELECT
  2      TO_CHAR(tanggal_lahir, 'DD-MM-YYYY') as tgl_teks,
  3      TO_CHAR(tinggi_badan, '999.99') as tinggi_teks,
  4      TO_DATE('10-10-2025', 'DD-MM-YYYY') as teks_ke_tgl,
  5      TO_NUMBER('100') + berat_badan as hasil_jumlah
  6  FROM mahasiswa WHERE id <= 5;

TGL_TEKS   TINGGI_ TEKS_KE_T HASIL_JUMLAH
---------- ------- --------- ------------
23-12-2004  142.00 10-OCT-25        138.5
15-04-1998  171.00 10-OCT-25          165
30-01-1995  192.00 10-OCT-25          185
07-07-1999  168.00 10-OCT-25          158
24-12-2002  159.00 10-OCT-25        149.5

SQL> SELECT
  2      nama,
  3      ABS(berat_badan - 100) as jarak_mutlak,
  4      MOD(id, 3) as sisa_bagi,
  5      FLOOR(tinggi_badan) as lantai_angka,
  6      POWER(id, 2) as kuadrat_id,
  7      ROUND(tinggi_badan, 0) as pembulatan,
  8      CEIL(tinggi_badan) as atap_angka
  9  FROM mahasiswa WHERE id <= 5;

NAMA                 JARAK_MUTLAK  SISA_BAGI LANTAI_ANGKA KUADRAT_ID PEMBULATAN ATAP_ANGKA
-------------------- ------------ ---------- ------------ ---------- ---------- ----------
Amiya                        61.5          1          142          1        142        142
Nearl (Margaret)               35          2          171          4        171        171
SilverAsh (Enciodes)           15          0          192          9        192        192
Ch Chen                        42          1          168         16        168        168
Exusiai                      50.5          2          159         25        159        159

SQL> select * from mahasiswa
  2  ;

  ID NAMA                 TEMPAT_LAHIR    TANGGAL_LAHI NOMOR_HP      EMAIL                     TINGGI_BADAN BERAT_BADAN
---- -------------------- --------------- ------------ ------------- ------------------------- ------------ -----------
   1 Amiya                Rim Billiton    23-DEC-04    081200000001  amiya@rhodesisland.com             142          39
   2 Nearl (Margaret)     Kazimierz       15-APR-98    081200000002  nearl@rhodesisland.com             171          65
   3 SilverAsh (Enciodes) Kjerag          30-JAN-95    081200000003  silverash@karlantrade.com          192          85
   4 Ch Chen              Lungmen         07-JUL-99    081200000004  chen@lmsl.gov                      168          58
   5 Exusiai              Laterano        24-DEC-02    081200000005  applepie@penguindeliv.com          159          50
   6 Texas                Siracusa        01-JUN-01    081200000006  texas@penguindeliv.com             161          52
   7 Siege (Vina)         Victoria        10-MAY-00    081200000007  siege@glassgow.uk                  172          68
   8 Kal'tsit             Unknown         01-JAN-00    081200000008  kaltsit@rhodesisland.com           169          55
   9 Skadi                Abyssal         03-MAR-97    081200000009  skadi@aegir.com                    166          60
  10 Hoshiguma            Higashi         22-NOV-96    081200000010  hoshiguma@lmsl.gov                 184          82
  11 Surtr                Unknown         14-AUG-03    081200000011  surtr@icecream.com                 163          51
  12 Thorns               Iberia          20-SEP-01    081200000012  thorns@destreza.com                177          64
  13 Mudrock              Sarkaz          02-FEB-02    081200000013  mudrock@gargoyle.com               163          78
  14 Saria                Columbia        10-APR-94    081200000014  saria@rhine.com                    174          70
  15 Bagpipe              Victoria        30-OCT-03    081200000015  bagpipe@rhodesisland.com           167          62

15 rows selected.

SQL> SPOOL OFF
