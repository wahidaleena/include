       IDENTIFICATION DIVISION.
       PROGRAM-ID.    TESTDB2.
      *SECURITY.      OPERACTION, REVISION, AND DISTRIBUTION
      *            OF THIS PROGRAM BY WRITTEN AUTHORIZATION
      *            OF THE ABOVE INSTALLACTION ONLY.
      *DATE-WRITTEN.  09/12/19.
      *DATE-COMPLETED.
      **************************CC109**********************************

       PROCEDURE DIVISION.
       0000-INITIALIZE-PARA.

        EXEC SQL INCLUDE SQLDA; END-EXEC.

        EXEC SQL DECLARE C1 CURSOR FOR
          SELECT DEPTNO, DEPTNAME, MGRNO FROM TDEPT
          WHERE ADMRDEPT = 'A00';
        END-EXEC.

       6000-FINAL-COUNT.
        CLOSE INFILE
              OUT.
        DISPLAY "-----------------------------------------------------".

