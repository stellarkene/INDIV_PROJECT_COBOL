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
       01  WS-SEL-MENU-CHOICE                      PIC X(2).

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
                       PERFORM SELECTION-MENU
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
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\sequence & sqnc_2.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../sequence && ./sqnc_2" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT

                   WHEN 3
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\sequence & sqnc_3.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../sequence && ./sqnc_3" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT

                   WHEN 4
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\sequence & sqnc_4.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../sequence && ./sqnc_4" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT

                   WHEN 5
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\sequence & sqnc_5.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../sequence && ./sqnc_5" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT

                   WHEN 6
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\sequence & sqnc_6.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../sequence && ./sqnc_6" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT

                   WHEN 7
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\sequence & sqnc_7.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../sequence && ./sqnc_7" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT

                   WHEN 8
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\sequence & sqnc_8.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../sequence && ./sqnc_8" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT

                   WHEN 9
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\sequence & sqnc_9.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../sequence && ./sqnc_9" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT

                   WHEN 10
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\sequence & sqnc_10.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../sequence && ./sqnc_10" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT

                   WHEN 11
                       DISPLAY "EXITING... SEQUENCE MENU"

                   WHEN OTHER 
                       DISPLAY "INVALID INPUT, TYPE ANOTHER"

               END-EVALUATE
           END-PERFORM
           PERFORM EXIT-PROMPT
           EXIT PARAGRAPH.

      *SELECTION
       SELECTION-MENU.
           ACCEPT UTIL-OS-NAME FROM ENVIRONMENT "OS"
           
           PERFORM UNTIL WS-SEL-MENU-CHOICE = 11
           PERFORM CLEAR-SCREEN
           DISPLAY "========================"
           DISPLAY "     SELECTION MENU     "
           DISPLAY "========================"
           DISPLAY "1 - REVISED GRADES PASSED OR FAILED"
           DISPLAY "2 - POSITIVE OR NEGATIVE"
           DISPLAY "3 - EVEN OR ODD"
           DISPLAY "4 - LARGER OF TWO NUMBERS"
           DISPLAY "5 - SMALLEST OF THREE NUMBERS"
           DISPLAY "6 - REVISED GRADES WITH EQUIVALENT"
           DISPLAY "7 - TEMPERATURE INFORMATION"
           DISPLAY "8 - REVISED SALESMAN INFORMATION WITH COMISSION"
           DISPLAY "9 - NUMBER - DAY EQUIVALENT"
           DISPLAY "10 - VOWEL OR CONSONANT"
           DISPLAY "11 - EXIT SELECTION MENU"
           DISPLAY "PLEASE ENTER YOUR CHOICE: " WITH NO ADVANCING
           ACCEPT WS-SEL-MENU-CHOICE

           EVALUATE WS-SEL-MENU-CHOICE
               WHEN 1
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\selection & sel_1.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../selection && ./sel_1" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT
               WHEN 2
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\selection & sel_2.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../selection && ./sel_2" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT
               WHEN 3
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\selection & sel_3.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../selection && ./sel_3" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT
               WHEN 4
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\selection & sel_4.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../selection && ./sel_4" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT
               WHEN 5
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\selection & sel_5.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../selection && ./sel_5" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT
               WHEN 6 
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\selection & sel_6.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../selection && ./sel_6" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT
               WHEN 7
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\selection & sel_7.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../selection && ./sel_7" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT
               WHEN 8
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\selection & sel_8.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../selection && ./sel_8" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT
               WHEN 9
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\selection & sel_9.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../selection && ./sel_9" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT
               WHEN 10
                   PERFORM CLEAR-SCREEN

                   IF UTIL-OS-NAME = "Windows_NT"
                   MOVE "cd ..\selection & sel_10.exe" TO UTIL-PROG-PATH
                   ELSE
                   MOVE "cd ../selection && ./sel_10" TO UTIL-PROG-PATH
                   END-IF
                   CALL "SYSTEM" USING UTIL-PROG-PATH

                   PERFORM EXIT-PROMPT
               WHEN 11
                   DISPLAY "EXITING... SELECTION MENU"
               WHEN OTHER
                   DISPLAY "INVALID INPUT, TRY AGAIN"
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
               DISPLAY "PRESS ENTER TO PROCEED"
               ACCEPT OMITTED
           EXIT PARAGRAPH.
