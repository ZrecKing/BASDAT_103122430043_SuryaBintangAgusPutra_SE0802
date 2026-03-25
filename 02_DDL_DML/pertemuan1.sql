SQL> --nama:SuryaBintangAgusPUtra
SQL> --nim:103122430043
SQL> desc Operator
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_OPERATOR                               NOT NULL CHAR(2)
 NAMA                                      NOT NULL VARCHAR2(25)
 RACE                                      NOT NULL VARCHAR2(25)
 TAHUN                                     NOT NULL NUMBER
 ID_ROLE_OPERATOR                                   CHAR(5)

SQL> desc Role_Operator
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_ROLE_OPERATOR                          NOT NULL CHAR(5)
 ROLE                                               VARCHAR2(60)

SQL> INSERT INTO Role_Operator (ID_ROLE_OPERATOR, ROLE)
  2  VALUES ('K0001', 'Guard');

1 row created.

SQL> INSERT INTO Role_Operator (ID_ROLE_OPERATOR, ROLE)
  2  VALUES ('K0002', 'Marksman');

1 row created.

SQL> 
SQL> INSERT INTO Role_Operator (ID_ROLE_OPERATOR, ROLE)
  2  VALUES ('K0003', 'Defender');

1 row created.

SQL> INSERT INTO Role_Operator (ID_ROLE_OPERATOR, ROLE)
  2  VALUES ('K0004', 'Specialist');

1 row created.

SQL> SELECT * FROM Role_Operator;

ID_KA ROLE                                                                  
----- ------------------------------------------------------------              
K0001 Guard                                                                       
K0002 Marksman                                                                     
K0003 Defender                                                                 
K0004 Specialist                                                                       

SQL> INSERT INTO Operator (ID_OPERATOR, NAMA, RACE, TAHUN, ID_ROLE_OPERATOR)
  2  VALUES ('M1', 'Lappland', 'Lupos', 2022, 'K0001');

1 row created.

SQL> INSERT INTO Operator (ID_OPERATOR, NAMA, RACE, TAHUN, ID_ROLE_OPERATOR)
  2  VALUES ('M2', 'Exusiai', 'Bunny', 2021, 'K0002');

1 row created.

SQL> INSERT INTO Operator (ID_OPERATOR, NAMA, RACE, TAHUN, ID_ROLE_OPERATOR)
  2  VALUES ('M3', 'Mudrock', 'Lupos', 2020, 'K0003');

1 row created.

SQL> INSERT INTO Operator (ID_OPERATOR, NAMA, RACE, TAHUN, ID_ROLE_OPERATOR)
  2  VALUES ('M4', 'Gravel', 'Uma', 2023, 'K0004');

1 row created.

SQL> SELECT * FROM Operator;

ID NAMA                      RACE                           TAHUN ID_KA         
-- ------------------------- ------------------------- ---------- -----         
M1 Lappland                  Lupos                          2022  K0001         
M2 Exusiai                   Bunny                          2021  K0002         
M3 Mudrock                   Lupos                          2020  K0003         
M4 Gravel                    Uma                            2023  K0004         

SQL> UPDATE Operator
  2  SET NAMA = 'Mlynar',
  3  RACE = 'Uma',
  4  TAHUN = 2023,
  5  ID_ROLE_OPERATOR = 'K0001'
  6  WHERE ID_OPERATOR = 'M4';

1 row updated.

SQL> DELETE FROM Operator
  2  WHERE ID_OPERATOR = 'M4';

1 row deleted.

SQL> MERGE INTO Operator m
  2  USING (SELECT * FROM Role_Operator) k
  3  ON (m.ID_ROLE_OPERATOR = k.ID_ROLE_OPERATOR)
  4  WHEN MATCHED THEN
  5  UPDATE SET m.NAMA = 'New Name', m.RACE = 'New Race', m.TAHUN = 2024
  6  WHEN NOT MATCHED THEN
  7  INSERT (ID_OPERATOR, NAMA, RACE, TAHUN, ID_ROLE_OPERATOR)
  8  VALUES ('M5', 'New Operator', 'RaceX', 2024, k.ID_ROLE_OPERATOR);

4 rows merged.

SQL> CREATE VIEW OperatorTahunTertentu AS
  2  SELECT ID_OPERATOR, NAMA, RACE, TAHUN, ID_ROLE_OPERATOR
  3  FROM Operator
  4  WHERE TAHUN = 2022;

View created.

SQL> CREATE MATERIALIZED VIEW OperatorLupos AS
  2  SELECT ID_OPERATOR, NAMA, RACE, TAHUN, ID_ROLE_OPERATOR
  3  FROM Operator
  4  WHERE RACE = 'Lupos';

Materialized view created.

SQL> SPOOL OFF
