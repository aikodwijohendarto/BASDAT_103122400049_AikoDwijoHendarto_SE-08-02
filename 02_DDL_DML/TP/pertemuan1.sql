SQL> --nim: 103122400049
SQL> --nama: Aiko Dwijo Hendarto
SQL> CREATE TABLE jurusan (
  2      id_jurusan VARCHAR2(15) PRIMARY KEY,
  3      nama_jurusan VARCHAR2(30)
  4  );

Table created.

SQL> CREATE TABLE mahasiswa (
  2      nim VARCHAR2(15) PRIMARY KEY,
  3      nama VARCHAR2(50),
  4      umur NUMBER,
  5      id_jurusan VARCHAR2(10),
  6      CONSTRAINT fk_jurusan
  7      FOREIGN KEY (id_jurusan)
  8      REFERENCES jurusan(id_jurusan)
  9  );

Table created.

SQL> INSERT INTO jurusan VALUES ('J01', 'Informatika');

1 row created.

SQL> INSERT INTO jurusan VALUES ('J02', 'Rekayasa Perangkat Lunak');

1 row created.

SQL> INSERT INTO jurusan VALUES ('J03', 'Teknik Komputer');INSERT INTO mahasiswa VALUES ('101', 'Andi', 20, 'J01');
INSERT INTO jurusan VALUES ('J03', 'Teknik Komputer');INSERT INTO mahasiswa VALUES ('101', 'Andi', 20, 'J01')
                                                     *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> INSERT INTO mahasiswa VALUES ('102', 'Budi', 21, 'J02');

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('103', 'Ahmad', 19, 'J03');
INSERT INTO mahasiswa VALUES ('103', 'Ahmad', 19, 'J03')
*
ERROR at line 1:
ORA-02291: integrity constraint (SYSTEM.FK_JURUSAN) violated - parent key not 
found 


SQL> INSERT INTO jurusan VALUES ('J03', 'Teknik Komputer');

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('101', 'Andi', 20, 'J01');

1 row created.

SQL> INSERT INTO jurusan VALUES ('J03', 'Teknik Komputer');
INSERT INTO jurusan VALUES ('J03', 'Teknik Komputer')
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008372) violated 


SQL> INSERT INTO mahasiswa VALUES ('103', 'Ahmad', 19, 'J03');

1 row created.

SQL> SELECT * FROM jurusan;

ID_JURUSAN      NAMA_JURUSAN                                                    
--------------- ------------------------------                                  
J01             Informatika                                                     
J02             Rekayasa Perangkat Lunak                                        
J03             Teknik Komputer                                                 

SQL> SELECT * FROM mahasiswa;

NIM             NAMA                                                     UMUR   
--------------- -------------------------------------------------- ----------   
ID_JURUSAN                                                                      
----------                                                                      
102             Budi                                                       21   
J02                                                                             
                                                                                
101             Andi                                                       20   
J01                                                                             
                                                                                
103             Ahmad                                                      19   
J03                                                                             
                                                                                

SQL> UPDATE mahasiswa
  2  SET umur = 21
  3  WHERE nim = '103';

1 row updated.

SQL> DELETE FROM mahasiswa
  2  WHERE nim = '102';

1 row deleted.

SQL> CREATE VIEW view_mahasiswa AS
  2  SELECT m.nim, m.nama, j.nama_jurusan
  3  FROM mahasiswa m
  4  JOIN jurusan j
  5  ON m.id_jurusan = j.id_jurusan;

View created.

SQL> SELECT * FROM view_mahasiswa;

NIM             NAMA                                                            
--------------- --------------------------------------------------              
NAMA_JURUSAN                                                                    
------------------------------                                                  
101             Andi                                                            
Informatika                                                                     
                                                                                
103             Ahmad                                                           
Teknik Komputer                                                                 
                                                                                

SQL> SPOOL OFF
