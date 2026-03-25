SQL> --nama: Surya Bintang Agus Putra
SQL> --nim: 103122430043
SQL> CREATE TABLE Film (
  2      id_film NUMBER PRIMARY KEY,
  3      judul VARCHAR2(255),
  4      sinopsis CLOB,
  5      tahun NUMBER(4),
  6      durasi NUMBER
  7  );

Table created.

SQL> CREATE TABLE Theater (
  2      id_theater NUMBER PRIMARY KEY,
  3      harga NUMBER(10, 2),
  4      kapasitas NUMBER,
  5      kelas VARCHAR2(50)
  6  );

Table created.

SQL> CREATE TABLE Inventaris (
  2      id_inventaris NUMBER PRIMARY KEY,
  3      id_theater NUMBER,
  4      nomor_kursi VARCHAR2(10),
  5      CONSTRAINT fk_theater_inv FOREIGN KEY (id_theater)
  6          REFERENCES Theater(id_theater)
  7  );

Table created.

SQL> CREATE TABLE Member (
  2      id_member NUMBER PRIMARY KEY,
  3      nama VARCHAR2(100),
  4      no_hp VARCHAR2(20),
  5      tgl_lahir DATE,
  6      email VARCHAR2(100)
  7  );

Table created.

SQL> CREATE TABLE Jadwal (
  2      id_jadwal NUMBER PRIMARY KEY,
  3      id_film NUMBER,
  4      id_theater NUMBER,
  5      periode_start DATE,
  6      periode_end DATE,
  7      CONSTRAINT fk_film_jadwal FOREIGN KEY (id_film)
  8          REFERENCES Film(id_film),
  9      CONSTRAINT fk_theater_jadwal FOREIGN KEY (id_theater)
 10          REFERENCES Theater(id_theater)
 11  );

Table created.

SQL> CREATE TABLE Transaksi (
  2      kode_pemesanan VARCHAR2(20) PRIMARY KEY,
  3      id_jadwal NUMBER,
  4      id_member NUMBER,
  5      status VARCHAR2(50),
  6      tanggal DATE,
  7      total_harga NUMBER(10, 2),
  8      CONSTRAINT fk_jadwal_trx FOREIGN KEY (id_jadwal)
  9          REFERENCES Jadwal(id_jadwal),
 10      CONSTRAINT fk_member_trx FOREIGN KEY (id_member)
 11          REFERENCES Member(id_member)
 12  );

Table created.

SQL> desc transaksi
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KODE_PEMESANAN                            NOT NULL VARCHAR2(20)
 ID_JADWAL                                          NUMBER
 ID_MEMBER                                          NUMBER
 STATUS                                             VARCHAR2(50)
 TANGGAL                                            DATE
 TOTAL_HARGA                                        NUMBER(10,2)

SQL> desc jadwal
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_JADWAL                                 NOT NULL NUMBER
 ID_FILM                                            NUMBER
 ID_THEATER                                         NUMBER
 PERIODE_START                                      DATE
 PERIODE_END                                        DATE

SQL> desc inventaris
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_INVENTARIS                             NOT NULL NUMBER
 ID_THEATER                                         NUMBER
 NOMOR_KURSI                                        VARCHAR2(10)

SQL> desch theater
SP2-0734: unknown command beginning "desch thea..." - rest of line ignored.
SQL> desc theater
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_THEATER                                NOT NULL NUMBER
 HARGA                                              NUMBER(10,2)
 KAPASITAS                                          NUMBER
 KELAS                                              VARCHAR2(50)

SQL> desc film
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                   NOT NULL NUMBER
 JUDUL                                              VARCHAR2(255)
 SINOPSIS                                           CLOB
 TAHUN                                              NUMBER(4)
 DURASI                                             NUMBER

SQL> INSERT ALL
  2    INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (1, 'Your Name', 'Remaja bertukar tubuh', 2016, 106)
  3    INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (2, 'Weathering With You', 'Gadis pengendali cuaca', 2019, 112)
  4    INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (3, 'Suzume', 'Pintu bencana', 2022, 122)
  5    INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (4, '5 Centimeters per Second', 'Cinta dan jarak', 2007, 63)
  6    INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (5, 'The Garden of Words', 'Pertemuan saat hujan', 2013, 46)
  7  SELECT * FROM dual;

5 rows created.

SQL> INSERT ALL
  2    INTO Theater (id_theater, harga, kapasitas, kelas) VALUES (101, 45000, 50, 'Reguler')
  3    INTO Theater (id_theater, harga, kapasitas, kelas) VALUES (102, 50000, 40, 'Reguler Plus')
  4    INTO Theater (id_theater, harga, kapasitas, kelas) VALUES (103, 75000, 30, 'Dolby')
  5    INTO Theater (id_theater, harga, kapasitas, kelas) VALUES (104, 100000, 20, 'Premiere')
  6    INTO Theater (id_theater, harga, kapasitas, kelas) VALUES (105, 150000, 15, 'Velvet')
  7  SELECT * FROM dual;

5 rows created.

SQL> INSERT ALL
  2    INTO Inventaris (id_inventaris, id_theater, nomor_kursi) VALUES (1, 101, 'A1')
  3    INTO Inventaris (id_inventaris, id_theater, nomor_kursi) VALUES (2, 101, 'A2')
  4    INTO Inventaris (id_inventaris, id_theater, nomor_kursi) VALUES (3, 102, 'B1')
  5    INTO Inventaris (id_inventaris, id_theater, nomor_kursi) VALUES (4, 103, 'C1')
  6    INTO Inventaris (id_inventaris, id_theater, nomor_kursi) VALUES (5, 104, 'D1')
  7  SELECT * FROM dual;

5 rows created.

SQL> INSERT ALL
  2    INTO Member (id_member, nama, no_hp, tgl_lahir, email) VALUES (1, 'Taki', '0811', TO_DATE('1999-12-01','YYYY-MM-DD'), 'taki@mail.com')
  3    INTO Member (id_member, nama, no_hp, tgl_lahir, email) VALUES (2, 'Mitsuha', '0812', TO_DATE('1997-04-20','YYYY-MM-DD'), 'mitsuha@mail.com')
  4    INTO Member (id_member, nama, no_hp, tgl_lahir, email) VALUES (3, 'Hodaka', '0813', TO_DATE('2005-01-10','YYYY-MM-DD'), 'hodaka@mail.com')
  5    INTO Member (id_member, nama, no_hp, tgl_lahir, email) VALUES (4, 'Suzume', '0814', TO_DATE('2006-05-24','YYYY-MM-DD'), 'suzume@mail.com')
  6    INTO Member (id_member, nama, no_hp, tgl_lahir, email) VALUES (5, 'Takaki', '0815', TO_DATE('1985-03-15','YYYY-MM-DD'), 'takaki@mail.com')
  7  SELECT * FROM dual;

5 rows created.

SQL> INSERT ALL
  2    INTO Jadwal (id_jadwal, id_film, id_theater, periode_start, periode_end) VALUES (501, 1, 101, TO_DATE('2026-03-10 13:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-10 14:46','YYYY-MM-DD HH24:MI'))
  3    INTO Jadwal (id_jadwal, id_film, id_theater, periode_start, periode_end) VALUES (502, 2, 102, TO_DATE('2026-03-10 15:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-10 16:52','YYYY-MM-DD HH24:MI'))
  4    INTO Jadwal (id_jadwal, id_film, id_theater, periode_start, periode_end) VALUES (503, 3, 103, TO_DATE('2026-03-10 17:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-10 19:02','YYYY-MM-DD HH24:MI'))
  5    INTO Jadwal (id_jadwal, id_film, id_theater, periode_start, periode_end) VALUES (504, 4, 104, TO_DATE('2026-03-11 19:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-11 20:03','YYYY-MM-DD HH24:MI'))
  6    INTO Jadwal (id_jadwal, id_film, id_theater, periode_start, periode_end) VALUES (505, 5, 105, TO_DATE('2026-03-11 21:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-11 21:46','YYYY-MM-DD HH24:MI'))
  7  SELECT * FROM dual;

5 rows created.

SQL> INSERT ALL
  2    INTO Transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga) VALUES ('TX01', 501, 1, 'LUNAS', TO_DATE('2026-03-08','YYYY-MM-DD'), 45000)
  3    INTO Transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga) VALUES ('TX02', 502, 2, 'LUNAS', TO_DATE('2026-03-08','YYYY-MM-DD'), 50000)
  4    INTO Transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga) VALUES ('TX03', 503, 3, 'LUNAS', TO_DATE('2026-03-08','YYYY-MM-DD'), 75000)
  5    INTO Transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga) VALUES ('TX04', 504, 4, 'PROSES', TO_DATE('2026-03-08','YYYY-MM-DD'), 100000)
  6    INTO Transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga) VALUES ('TX05', 505, 5, 'LUNAS', TO_DATE('2026-03-08','YYYY-MM-DD'), 150000)
  7  SELECT * FROM dual;

5 rows created.

SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL> SET FEEDBACK OFF;
SQL> 
SQL> COLUMN judul FORMAT A25;
SQL> COLUMN sinopsis FORMAT A30;
SQL> COLUMN nama FORMAT A15;
SQL> COLUMN email FORMAT A20;
SQL> COLUMN kelas FORMAT A15;
SQL> COLUMN status FORMAT A10;
SQL> COLUMN kode_pemesanan FORMAT A10;
SQL> COLUMN nomor_kursi FORMAT A5;
SQL> select * from film
  2  ;

   ID_FILM JUDUL                     SINOPSIS                            TAHUN     DURASI                                                                                                               
---------- ------------------------- ------------------------------ ---------- ----------                                                                                                               
         1 Your Name                 Remaja bertukar tubuh                2016        106                                                                                                               
         2 Weathering With You       Gadis pengendali cuaca               2019        112                                                                                                               
         3 Suzume                    Pintu bencana                        2022        122                                                                                                               
         4 5 Centimeters per Second  Cinta dan jarak                      2007         63                                                                                                               
         5 The Garden of Words       Pertemuan saat hujan                 2013         46                                                                                                               
SQL> select * from transaksi;

KODE_PEMES  ID_JADWAL  ID_MEMBER STATUS     TANGGAL   TOTAL_HARGA                                                                                                                                       
---------- ---------- ---------- ---------- --------- -----------                                                                                                                                       
TX01              501          1 LUNAS      08-MAR-26       45000                                                                                                                                       
TX02              502          2 LUNAS      08-MAR-26       50000                                                                                                                                       
TX03              503          3 LUNAS      08-MAR-26       75000                                                                                                                                       
TX04              504          4 PROSES     08-MAR-26      100000                                                                                                                                       
TX05              505          5 LUNAS      08-MAR-26      150000                                                                                                                                       
SQL> UPDATE Film
  2  SET sinopsis = 'Kisah legendaris pertukaran tubuh Taki dan Mitsuha'
  3  WHERE id_film = 1;
SQL> UPDATE Theater
  2  SET harga = 65000
  3  WHERE id_theater = 103;
SQL> UPDATE Member
  2  SET email = 'suzume.iwato@newmail.jp', no_hp = '08771122'
  3  WHERE id_member = 4;
SQL> UPDATE Jadwal
  2  SET periode_start = TO_DATE('2026-03-15 20:00', 'YYYY-MM-DD HH24:MI')
  3  WHERE id_jadwal = 504;
SQL> UPDATE Transaksi
  2  SET status = 'LUNAS'
  3  WHERE kode_pemesanan = 'TX04';
SQL> SELECT judul, sinopsis FROM Film WHERE id_film = 1;

JUDUL                     SINOPSIS                                                                                                                                                                      
------------------------- ------------------------------                                                                                                                                                
Your Name                 Kisah legendaris pertukaran tu                                                                                                                                                
                          buh Taki dan Mitsuha                                                                                                                                                          
                                                                                                                                                                                                        
SQL> SELECT kelas, harga FROM Theater;

KELAS                HARGA                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Reguler              45000                                                                                                                                                                              
Reguler Plus         50000                                                                                                                                                                              
Dolby                65000                                                                                                                                                                              
Premiere            100000                                                                                                                                                                              
Velvet              150000                                                                                                                                                                              
SQL> SELECT nama, no_hp FROM Member WHERE nama = 'Suzume';

NAMA            NO_HP                                                                                                                                                                                   
--------------- --------------------                                                                                                                                                                    
Suzume          08771122                                                                                                                                                                                
SQL> SELECT kode_pemesanan, status FROM Transaksi WHERE kode_pemesanan = 'TX04';

KODE_PEMES STATUS                                                                                                                                                                                       
---------- ----------                                                                                                                                                                                   
TX04       LUNAS                                                                                                                                                                                        
SQL> select * from transaksi;

KODE_PEMES  ID_JADWAL  ID_MEMBER STATUS     TANGGAL   TOTAL_HARGA                                                                                                                                       
---------- ---------- ---------- ---------- --------- -----------                                                                                                                                       
TX01              501          1 LUNAS      08-MAR-26       45000                                                                                                                                       
TX02              502          2 LUNAS      08-MAR-26       50000                                                                                                                                       
TX03              503          3 LUNAS      08-MAR-26       75000                                                                                                                                       
TX04              504          4 LUNAS      08-MAR-26      100000                                                                                                                                       
TX05              505          5 LUNAS      08-MAR-26      150000                                                                                                                                       
SQL> DELETE FROM Transaksi
  2  WHERE status = 'BATAL';
SQL> select * from transaksi;

KODE_PEMES  ID_JADWAL  ID_MEMBER STATUS     TANGGAL   TOTAL_HARGA                                                                                                                                       
---------- ---------- ---------- ---------- --------- -----------                                                                                                                                       
TX01              501          1 LUNAS      08-MAR-26       45000                                                                                                                                       
TX02              502          2 LUNAS      08-MAR-26       50000                                                                                                                                       
TX03              503          3 LUNAS      08-MAR-26       75000                                                                                                                                       
TX04              504          4 LUNAS      08-MAR-26      100000                                                                                                                                       
TX05              505          5 LUNAS      08-MAR-26      150000                                                                                                                                       
SQL> DELETE FROM Transaksi
  2  WHERE id_jadwal = '503';
SQL> select * from transaksi;

KODE_PEMES  ID_JADWAL  ID_MEMBER STATUS     TANGGAL   TOTAL_HARGA                                                                                                                                       
---------- ---------- ---------- ---------- --------- -----------                                                                                                                                       
TX01              501          1 LUNAS      08-MAR-26       45000                                                                                                                                       
TX02              502          2 LUNAS      08-MAR-26       50000                                                                                                                                       
TX04              504          4 LUNAS      08-MAR-26      100000                                                                                                                                       
TX05              505          5 LUNAS      08-MAR-26      150000                                                                                                                                       
SQL> select * from member;

 ID_MEMBER NAMA            NO_HP                TGL_LAHIR EMAIL                                                                                                                                         
---------- --------------- -------------------- --------- --------------------                                                                                                                          
         1 Taki            0811                 01-DEC-99 taki@mail.com                                                                                                                                 
         2 Mitsuha         0812                 20-APR-97 mitsuha@mail.com                                                                                                                              
         3 Hodaka          0813                 10-JAN-05 hodaka@mail.com                                                                                                                               
         4 Suzume          08771122             24-MAY-06 suzume.iwato@newmail                                                                                                                          
                                                          .jp                                                                                                                                           
                                                                                                                                                                                                        
         5 Takaki          0815                 15-MAR-85 takaki@mail.com                                                                                                                               
SQL> DELETE FROM Transaksi
  2  WHERE id_member = (SELECT id_member FROM Member WHERE no_hp = '0812')
  3  ;
SQL> DELETE FROM Member
  2  WHERE no_hp = '0812';
SQL> select * from member;

 ID_MEMBER NAMA            NO_HP                TGL_LAHIR EMAIL                                                                                                                                         
---------- --------------- -------------------- --------- --------------------                                                                                                                          
         1 Taki            0811                 01-DEC-99 taki@mail.com                                                                                                                                 
         3 Hodaka          0813                 10-JAN-05 hodaka@mail.com                                                                                                                               
         4 Suzume          08771122             24-MAY-06 suzume.iwato@newmail                                                                                                                          
                                                          .jp                                                                                                                                           
                                                                                                                                                                                                        
         5 Takaki          0815                 15-MAR-85 takaki@mail.com                                                                                                                               
SQL> SPOOL OFF
