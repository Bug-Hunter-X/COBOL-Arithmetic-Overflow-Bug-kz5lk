01  WS-AREA-1 PIC 9(5) VALUE 99999. 
01  WS-AREA-2 PIC 9(5). 
01  WS-OVERFLOW-FLAG PIC 9 VALUE 0. 

PROCEDURE DIVISION.
    ADD 1 TO WS-AREA-1 ON SIZE ERROR MOVE 1 TO WS-OVERFLOW-FLAG
    IF WS-OVERFLOW-FLAG = 1 THEN
        MOVE ZERO TO WS-AREA-1
        DISPLAY "Overflow occurred! Resetting to zero." 
    END-IF
    MOVE WS-AREA-1 TO WS-AREA-2
    DISPLAY WS-AREA-2
    STOP RUN.