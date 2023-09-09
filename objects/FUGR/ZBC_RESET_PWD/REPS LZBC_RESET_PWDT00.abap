*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 24.04.2023 at 14:15:50
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZBC_RESET_PWD...................................*
DATA:  BEGIN OF STATUS_ZBC_RESET_PWD                 .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZBC_RESET_PWD                 .
CONTROLS: TCTRL_ZBC_RESET_PWD
            TYPE TABLEVIEW USING SCREEN '9001'.
*.........table declarations:.................................*
TABLES: *ZBC_RESET_PWD                 .
TABLES: ZBC_RESET_PWD                  .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .