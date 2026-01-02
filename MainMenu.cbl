      *PROGRAMMER NAME: GABRIEL SANCHEZ
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILEHANDLING-MAINMENU.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
      *UTIL    
       01  UTIL-OS-NAME                            PIC X(30).
       01  UTIL-PROG-PATH                          PIC X(30).

      *WS
       01  WS-MAIN-MENU-CHOICE                     PIC X.
       01  WS-SEQ-MENU-CHOICE                      PIC X(2).

       PROCEDURE DIVISION.
               PERFORM MAIN-MENU.
           STOP RUN.
           
      *MAIN MENU
       MAIN-MENU.
           PERFORM UNTIL WS-MAIN-MENU-CHOICE = 4
               PERFORM CLEAR-SCREEN

               DISPLAY "========================"
               DISPLAY "       MAIN MENU        "
               DISPLAY "========================"
               DISPLAY "1 - SEQUENCE MENU"
               DISPLAY "2 - SELECTION MENU"
               DISPLAY "3 - ITERATION MENU"
               DISPLAY "4 - EXIT"
               DISPLAY "PLEASE ENTER YOUR CHOICE: " WITH NO ADVANCING
               ACCEPT WS-MAIN-MENU-CHOICE

               EVALUATE WS-MAIN-MENU-CHOICE
                   WHEN 1
                       PERFORM SEQUENCE-MENU
                   WHEN 2
                       DISPLAY "YOU CHOSE SELECTION MENU"
                   WHEN 3 
                       DISPLAY "YOU CHOSE ITERATION MENU"
                   WHEN 4
                       DISPLAY "EXITING...."
                   WHEN OTHER
                       DISPLAY "INVALID CHOICE, ENTER ANOTHER"
               END-EVALUATE
           END-PERFORM 

           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *SEQUENCE
       SEQUENCE-MENU.
           ACCEPT UTIL-OS-NAME FROM ENVIRONMENT "OS"
           PERFORM UNTIL WS-SEQ-MENU-CHOICE = 11
               PERFORM CLEAR-SCREEN
               
               DISPLAY "========================"
               DISPLAY "     SEQUENCE MENU      "
               DISPLAY "========================"
               DISPLAY "1 - PRINT NAME 5 TIMES"
               DISPLAY "2 - SWAP TWO NUMBERS"
               DISPLAY "3 - TWO NUMBER OPERATIONS"
               DISPLAY "4 - CONVERT CELCIUS TO FAHRENHEIT"
               DISPLAY "5 - SALES-MAN INFORMATION"
               DISPLAY "6 - COMPUTE FOR AVERAGE"
               DISPLAY "7 - CUBE AND SQUARE OF A NUMBER"
               DISPLAY "8 - AREA AND PERIMETER OF A RECTANGLE"
               DISPLAY "9 - AREA AND CIRCUMFERENCE OF A CIRCLE"
               DISPLAY "10 - AREA AND PERIMETER OF A TRIANGLE"
               DISPLAY "11 - EXIT SEQUENCE MENU"
               DISPLAY "PLEASE ENTER YOUR CHOICE: " WITH NO ADVANCING
               ACCEPT WS-SEQ-MENU-CHOICE
               
               
               EVALUATE WS-SEQ-MENU-CHOICE
                   WHEN 1
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\sequence & sqnc_1.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../sequence && ./sqnc_1" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT

                   
                   WHEN 2
                       DISPLAY "2"
                   WHEN 3
                       DISPLAY "3"
                   WHEN 4
                       DISPLAY "4"
                   WHEN 5
                       DISPLAY "5"
                   WHEN 6
                       DISPLAY "6"
                   WHEN 7
                       DISPLAY "7"
                   WHEN 8
                       DISPLAY "8"
                   WHEN 9
                       DISPLAY "9"
                   WHEN 10
                       DISPLAY "10"
                   WHEN 11
                       DISPLAY "EXITING..."

                   WHEN OTHER 
                       DISPLAY "INVALID INPUT, TYPE ANOTHER"

               END-EVALUATE
           END-PERFORM
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *CLEAR SCREEN
       CLEAR-SCREEN.
               ACCEPT UTIL-OS-NAME FROM ENVIRONMENT "OS"

               IF UTIL-OS-NAME = "Windows_NT"
                   CALL "SYSTEM" USING "cls"
               ELSE
                   CALL "SYSTEM" USING "clear"
               END-IF

           EXIT PARAGRAPH.

      *EXIT-PROMPT
       EXIT-PROMPT.
               DISPLAY "PRESS ENTER TO EXIT"
               ACCEPT OMITTED
           EXIT PARAGRAPH.
