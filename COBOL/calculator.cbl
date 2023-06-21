       IDENTIFICATION              DIVISION.
      ******************************************************************
       PROGRAM-ID.                 calculator.
       AUTHOR.                     Kaniehuest.
       DATE-WRITTEN.               21/06/2023.

      ******************************************************************
       DATA                        DIVISION.
      ******************************************************************
       WORKING-STORAGE             SECTION.
      ******************************************************************
       01 WS-NUM1 PIC 9(5) VALUE ZERO.
       01 WS-NUM2 PIC 9(5) VALUE ZERO.
       01 WS-TOTAL PIC 9(5) VALUE ZERO.
       01 WS-OPERATION PIC X(1) VALUE ZERO.

      ******************************************************************
       PROCEDURE                   DIVISION.
      ******************************************************************
       MAIN-RTN.
           DISPLAY 'Ingrese el primer número.'.
           ACCEPT WS-NUM1.

           DISPLAY 'Ingrese el segundo número.'.
           ACCEPT WS-NUM2.

           DISPLAY 'Ingrese la operación (+, -, *, /).'.
           ACCEPT WS-OPERATION.

           IF WS-OPERATION = '+' THEN
               ADD WS-NUM1 WS-NUM2 TO WS-TOTAL.

           IF WS-OPERATION = '-' THEN
               SUBTRACT WS-NUM1 FROM WS-NUM2 GIVING WS-TOTAL.

           IF WS-OPERATION = '*' THEN
               MULTIPLY WS-NUM1 BY WS-NUM2 GIVING WS-TOTAL.

           IF WS-OPERATION = '/' then
               DIVIDE WS-NUM1 INTO WS-NUM2 GIVING WS-TOTAL.

           DISPLAY WS-TOTAL.
       MAIN-EXT.
           STOP RUN.
