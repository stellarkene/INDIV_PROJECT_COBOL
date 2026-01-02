      *PROGRAMMER NAME: GABRIEL SANCHEZ
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILEHANDLING-MAINMENU.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
      *UTIL    
       01  UTIL-OS-NAME                            PIC X(30).

      *WS
       01  WS-MAIN-MENU-CHOICE                     PIC X.

       PROCEDURE DIVISION.
           
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

                   WHEN 2

                   WHEN 3

                   WHEN 4
                   
                   WHEN OTHER
                       DISPLAY "INVALID CHOICE, ENTER ANOTHER"
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