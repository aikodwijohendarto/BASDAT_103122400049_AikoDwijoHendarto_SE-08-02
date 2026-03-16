SQL> --nama: Aiko Dwijo Hendarto
SQL> --nim: 103122400049
SQL> CREATE TABLE MAHASISWA (
  2  ID_MHS CHAR(5) PRIMARY KEY,
  3  NAMA VARCHAR2(100),
  4  TEMPAT_LAHIR VARCHAR2(50),
  5  TANGGAL_LAHIR DATE,
  6  NO_HP VARCHAR2(15),
  7  EMAIL VARCHAR2(100),
  8  TINGGI_BADAN NUMBER(3),
  9  BERAT_BADAN NUMBER(3)
 10  );

Table created.

SQL> INSERT INTO MAHASISWA VALUES ('M001','Aiko','Semarang',TO_DATE('2004-05-10','YYYY-MM-DD'),'081234567801','aiko@gmail.com',170,65);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M002','Kevin','Jakarta',TO_DATE('2003-07-12','YYYY-MM-DD'),'081234567802','kevin@gmail.com',168,60);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M003','Nopal','Bandung',TO_DATE('2002-03-18','YYYY-MM-DD'),'081234567803','nopal@gmail.com',172,70);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M004','Luna','Surabaya',TO_DATE('2004-09-21','YYYY-MM-DD'),'081234567804','luna@gmail.com',160,50);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M005','Jocelin','Medan',TO_DATE('2003-12-02','YYYY-MM-DD'),'081234567805','jocelin@gmail.com',165,55);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M006','Rizky','Solo',TO_DATE('2004-01-11','YYYY-MM-DD'),'081234567806','rizky@gmail.com',175,68);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M007','Dinda','Malang',TO_DATE('2003-02-14','YYYY-MM-DD'),'081234567807','dinda@gmail.com',158,48);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M008','Bima','Yogyakarta',TO_DATE('2002-10-10','YYYY-MM-DD'),'081234567808','bima@gmail.com',180,75);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M009','Sinta','Semarang',TO_DATE('2004-04-05','YYYY-MM-DD'),'081234567809','sinta@gmail.com',162,52);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M010','Rafi','Jakarta',TO_DATE('2003-11-20','YYYY-MM-DD'),'081234567810','rafi@gmail.com',170,67);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M011','Nina','Bandung',TO_DATE('2002-08-25','YYYY-MM-DD'),'081234567811','nina@gmail.com',159,49);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M012','Arga','Solo',TO_DATE('2004-06-17','YYYY-MM-DD'),'081234567812','arga@gmail.com',174,72);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M013','Tio','Surabaya',TO_DATE('2003-09-09','YYYY-MM-DD'),'081234567813','tio@gmail.com',169,66);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M014','Putri','Medan',TO_DATE('2002-05-30','YYYY-MM-DD'),'081234567814','putri@gmail.com',163,54);

1 row created.

SQL> INSERT INTO MAHASISWA VALUES ('M015','Yoga','Semarang',TO_DATE('2003-01-19','YYYY-MM-DD'),'081234567815','yoga@gmail.com',178,73);

1 row created.

SQL> SELECT LOWER(NAMA) FROM MAHASISWA;

LOWER(NAMA)                                                                     
--------------------------------------------------------------------------------
aiko                                                                            
kevin                                                                           
nopal                                                                           
luna                                                                            
jocelin                                                                         
rizky                                                                           
dinda                                                                           
bima                                                                            
sinta                                                                           
rafi                                                                            
nina                                                                            

LOWER(NAMA)                                                                     
--------------------------------------------------------------------------------
arga                                                                            
tio                                                                             
putri                                                                           
yoga                                                                            

15 rows selected.

SQL> SELECT UPPER(NAMA) FROM MAHASISWA;

UPPER(NAMA)                                                                     
--------------------------------------------------------------------------------
AIKO                                                                            
KEVIN                                                                           
NOPAL                                                                           
LUNA                                                                            
JOCELIN                                                                         
RIZKY                                                                           
DINDA                                                                           
BIMA                                                                            
SINTA                                                                           
RAFI                                                                            
NINA                                                                            

UPPER(NAMA)                                                                     
--------------------------------------------------------------------------------
ARGA                                                                            
TIO                                                                             
PUTRI                                                                           
YOGA                                                                            

15 rows selected.

SQL> SELECT INITCAP(NAMA) FROM MAHASISWA;

INITCAP(NAMA)                                                                   
--------------------------------------------------------------------------------
Aiko                                                                            
Kevin                                                                           
Nopal                                                                           
Luna                                                                            
Jocelin                                                                         
Rizky                                                                           
Dinda                                                                           
Bima                                                                            
Sinta                                                                           
Rafi                                                                            
Nina                                                                            

INITCAP(NAMA)                                                                   
--------------------------------------------------------------------------------
Arga                                                                            
Tio                                                                             
Putri                                                                           
Yoga                                                                            

15 rows selected.

SQL> 
SQL> SELECT CONCAT(NAMA,' Mahasiswa') FROM MAHASISWA;

CONCAT(NAMA,'MAHASISWA')                                                        
--------------------------------------------------------------------------------
Aiko Mahasiswa                                                                  
Kevin Mahasiswa                                                                 
Nopal Mahasiswa                                                                 
Luna Mahasiswa                                                                  
Jocelin Mahasiswa                                                               
Rizky Mahasiswa                                                                 
Dinda Mahasiswa                                                                 
Bima Mahasiswa                                                                  
Sinta Mahasiswa                                                                 
Rafi Mahasiswa                                                                  
Nina Mahasiswa                                                                  

CONCAT(NAMA,'MAHASISWA')                                                        
--------------------------------------------------------------------------------
Arga Mahasiswa                                                                  
Tio Mahasiswa                                                                   
Putri Mahasiswa                                                                 
Yoga Mahasiswa                                                                  

15 rows selected.

SQL> 
SQL> SELECT LENGTH(NAMA) FROM MAHASISWA;

LENGTH(NAMA)                                                                    
------------                                                                    
           4                                                                    
           5                                                                    
           5                                                                    
           4                                                                    
           7                                                                    
           5                                                                    
           5                                                                    
           4                                                                    
           5                                                                    
           4                                                                    
           4                                                                    

LENGTH(NAMA)                                                                    
------------                                                                    
           4                                                                    
           3                                                                    
           5                                                                    
           4                                                                    

15 rows selected.

SQL> 
SQL> SELECT SUBSTR(NAMA,1,3) FROM MAHASISWA;

SUBSTR(NAMA,                                                                    
------------                                                                    
Aik                                                                             
Kev                                                                             
Nop                                                                             
Lun                                                                             
Joc                                                                             
Riz                                                                             
Din                                                                             
Bim                                                                             
Sin                                                                             
Raf                                                                             
Nin                                                                             

SUBSTR(NAMA,                                                                    
------------                                                                    
Arg                                                                             
Tio                                                                             
Put                                                                             
Yog                                                                             

15 rows selected.

SQL> 
SQL> SELECT LPAD(NAMA,15,'*') FROM MAHASISWA;

LPAD(NAMA,15,'*')                                                               
------------------------------------------------------------                    
***********Aiko                                                                 
**********Kevin                                                                 
**********Nopal                                                                 
***********Luna                                                                 
********Jocelin                                                                 
**********Rizky                                                                 
**********Dinda                                                                 
***********Bima                                                                 
**********Sinta                                                                 
***********Rafi                                                                 
***********Nina                                                                 

LPAD(NAMA,15,'*')                                                               
------------------------------------------------------------                    
***********Arga                                                                 
************Tio                                                                 
**********Putri                                                                 
***********Yoga                                                                 

15 rows selected.

SQL> SELECT RPAD(NAMA,15,'*') FROM MAHASISWA;

RPAD(NAMA,15,'*')                                                               
------------------------------------------------------------                    
Aiko***********                                                                 
Kevin**********                                                                 
Nopal**********                                                                 
Luna***********                                                                 
Jocelin********                                                                 
Rizky**********                                                                 
Dinda**********                                                                 
Bima***********                                                                 
Sinta**********                                                                 
Rafi***********                                                                 
Nina***********                                                                 

RPAD(NAMA,15,'*')                                                               
------------------------------------------------------------                    
Arga***********                                                                 
Tio************                                                                 
Putri**********                                                                 
Yoga***********                                                                 

15 rows selected.

SQL> 
SQL> SELECT LTRIM('     AIKO') FROM DUAL;

LTRI                                                                            
----                                                                            
AIKO                                                                            

SQL> SELECT RTRIM('AIKO     ') FROM DUAL;

RTRI                                                                            
----                                                                            
AIKO                                                                            

SQL> 
SQL> SELECT INSTR(EMAIL,'@') FROM MAHASISWA;

INSTR(EMAIL,'@')                                                                
----------------                                                                
               5                                                                
               6                                                                
               6                                                                
               5                                                                
               8                                                                
               6                                                                
               6                                                                
               5                                                                
               6                                                                
               5                                                                
               5                                                                

INSTR(EMAIL,'@')                                                                
----------------                                                                
               5                                                                
               4                                                                
               6                                                                
               5                                                                

15 rows selected.

SQL> 
SQL> SELECT REPLACE(EMAIL,'gmail','student') FROM MAHASISWA;

REPLACE(EMAIL,'GMAIL','STUDENT')                                                
--------------------------------------------------------------------------------
aiko@student.com                                                                
kevin@student.com                                                               
nopal@student.com                                                               
luna@student.com                                                                
jocelin@student.com                                                             
rizky@student.com                                                               
dinda@student.com                                                               
bima@student.com                                                                
sinta@student.com                                                               
rafi@student.com                                                                
nina@student.com                                                                

REPLACE(EMAIL,'GMAIL','STUDENT')                                                
--------------------------------------------------------------------------------
arga@student.com                                                                
tio@student.com                                                                 
putri@student.com                                                               
yoga@student.com                                                                

15 rows selected.

SQL> SELECT TO_CHAR(TANGGAL_LAHIR,'MM') FROM MAHASISWA;

TO                                                                              
--                                                                              
05                                                                              
07                                                                              
03                                                                              
09                                                                              
12                                                                              
01                                                                              
02                                                                              
10                                                                              
04                                                                              
11                                                                              
08                                                                              

TO                                                                              
--                                                                              
06                                                                              
09                                                                              
05                                                                              
01                                                                              

15 rows selected.

SQL> SELECT TO_CHAR(TANGGAL_LAHIR,'MON') FROM MAHASISWA;

TO_CHAR(TANG                                                                    
------------                                                                    
MAY                                                                             
JUL                                                                             
MAR                                                                             
SEP                                                                             
DEC                                                                             
JAN                                                                             
FEB                                                                             
OCT                                                                             
APR                                                                             
NOV                                                                             
AUG                                                                             

TO_CHAR(TANG                                                                    
------------                                                                    
JUN                                                                             
SEP                                                                             
MAY                                                                             
JAN                                                                             

15 rows selected.

SQL> SELECT TO_CHAR(TANGGAL_LAHIR,'MONTH') FROM MAHASISWA;

TO_CHAR(TANGGAL_LAHIR,'MONTH')                                                  
------------------------------------                                            
MAY                                                                             
JULY                                                                            
MARCH                                                                           
SEPTEMBER                                                                       
DECEMBER                                                                        
JANUARY                                                                         
FEBRUARY                                                                        
OCTOBER                                                                         
APRIL                                                                           
NOVEMBER                                                                        
AUGUST                                                                          

TO_CHAR(TANGGAL_LAHIR,'MONTH')                                                  
------------------------------------                                            
JUNE                                                                            
SEPTEMBER                                                                       
MAY                                                                             
JANUARY                                                                         

15 rows selected.

SQL> 
SQL> SELECT TO_CHAR(TANGGAL_LAHIR,'DD') FROM MAHASISWA;

TO                                                                              
--                                                                              
10                                                                              
12                                                                              
18                                                                              
21                                                                              
02                                                                              
11                                                                              
14                                                                              
10                                                                              
05                                                                              
20                                                                              
25                                                                              

TO                                                                              
--                                                                              
17                                                                              
09                                                                              
30                                                                              
19                                                                              

15 rows selected.

SQL> SELECT TO_CHAR(TANGGAL_LAHIR,'DY') FROM MAHASISWA;

TO_CHAR(TANG                                                                    
------------                                                                    
MON                                                                             
SAT                                                                             
MON                                                                             
TUE                                                                             
TUE                                                                             
SUN                                                                             
FRI                                                                             
THU                                                                             
MON                                                                             
THU                                                                             
SUN                                                                             

TO_CHAR(TANG                                                                    
------------                                                                    
THU                                                                             
TUE                                                                             
THU                                                                             
SUN                                                                             

15 rows selected.

SQL> 
SQL> SELECT TO_CHAR(TANGGAL_LAHIR,'YYYY') FROM MAHASISWA;

TO_C                                                                            
----                                                                            
2004                                                                            
2003                                                                            
2002                                                                            
2004                                                                            
2003                                                                            
2004                                                                            
2003                                                                            
2002                                                                            
2004                                                                            
2003                                                                            
2002                                                                            

TO_C                                                                            
----                                                                            
2004                                                                            
2003                                                                            
2002                                                                            
2003                                                                            

15 rows selected.

SQL> SELECT TO_CHAR(TANGGAL_LAHIR,'YY') FROM MAHASISWA;

TO                                                                              
--                                                                              
04                                                                              
03                                                                              
02                                                                              
04                                                                              
03                                                                              
04                                                                              
03                                                                              
02                                                                              
04                                                                              
03                                                                              
02                                                                              

TO                                                                              
--                                                                              
04                                                                              
03                                                                              
02                                                                              
03                                                                              

15 rows selected.

SQL> 
SQL> SELECT TO_CHAR(SYSDATE,'AM HH HH24 MI SS') FROM DUAL;

TO_CHAR(SYSDAT                                                                  
--------------                                                                  
AM 12 00 22 07                                                                  

SQL> 
SQL> SELECT ADD_MONTHS(SYSDATE,3) FROM DUAL;

ADD_MONTH                                                                       
---------                                                                       
17-JUN-26                                                                       

SQL> 
SQL> SELECT SYSDATE FROM DUAL;

SYSDATE                                                                         
---------                                                                       
17-MAR-26                                                                       

SQL> 
SQL> SELECT LAST_DAY(SYSDATE) FROM DUAL;

LAST_DAY(                                                                       
---------                                                                       
31-MAR-26                                                                       

SQL> 
SQL> SELECT NEXT_DAY(SYSDATE,'MONDAY') FROM DUAL;

NEXT_DAY(                                                                       
---------                                                                       
23-MAR-26                                                                       

SQL> 
SQL> SELECT MONTHS_BETWEEN(SYSDATE,TANGGAL_LAHIR) FROM MAHASISWA;

MONTHS_BETWEEN(SYSDATE,TANGGAL_LAHIR)                                           
-------------------------------------                                           
                           262.226302                                           
                           272.161786                                           
                           287.968237                                           
                           257.871463                                           
                           267.484366                                           
                           266.194044                                           
                            277.09727                                           
                           281.226302                                           
                           263.387592                                           
                           267.903721                                           
                           282.742431                                           

MONTHS_BETWEEN(SYSDATE,TANGGAL_LAHIR)                                           
-------------------------------------                                           
                                  261                                           
                            270.25856                                           
                           285.581141                                           
                           277.935979                                           

15 rows selected.

SQL> 
SQL> SELECT ROUND(SYSDATE,'YEAR') FROM DUAL;

ROUND(SYS                                                                       
---------                                                                       
01-JAN-26                                                                       

SQL> SELECT TO_NUMBER('12345') FROM DUAL;

TO_NUMBER('12345')                                                              
------------------                                                              
             12345                                                              

SQL> 
SQL> SELECT TO_CHAR(SYSDATE,'DD-MM-YYYY') FROM DUAL;

TO_CHAR(SY                                                                      
----------                                                                      
17-03-2026                                                                      

SQL> 
SQL> SELECT TO_CHAR(50000,'99,999') FROM DUAL;

TO_CHAR                                                                         
-------                                                                         
 50,000                                                                         

SQL> 
SQL> SELECT TO_DATE('2024-12-25','YYYY-MM-DD') FROM DUAL;

TO_DATE('                                                                       
---------                                                                       
25-DEC-24                                                                       

SQL> SELECT ABS(-10) FROM DUAL;

  ABS(-10)                                                                      
----------                                                                      
        10                                                                      

SQL> 
SQL> SELECT MOD(10,3) FROM DUAL;

 MOD(10,3)                                                                      
----------                                                                      
         1                                                                      

SQL> 
SQL> SELECT FLOOR(15.7) FROM DUAL;

FLOOR(15.7)                                                                     
-----------                                                                     
         15                                                                     

SQL> 
SQL> SELECT POWER(2,5) FROM DUAL;

POWER(2,5)                                                                      
----------                                                                      
        32                                                                      

SQL> 
SQL> SELECT ROUND(12.567,2) FROM DUAL;

ROUND(12.567,2)                                                                 
---------------                                                                 
          12.57                                                                 

SQL> 
SQL> SELECT CEIL(12.3) FROM DUAL;

CEIL(12.3)                                                                      
----------                                                                      
        13                                                                      

SQL> SPOOL OFF
