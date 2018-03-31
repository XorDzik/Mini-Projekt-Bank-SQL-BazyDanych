/*1. Dodanie kolumny do tabeli stanowisko*/

ALTER TABLE STANOWISKO
    ADD (PREMIA NUMBER (6));
   
/* 2. Dodanie ograniczen do dodanej kolumny*/

ALTER TABLE STANOWISKO
    MODIFY (PREMIA NUMBER (6)
    CONSTRAINT STANOWISKO_PREMIA_NN NOT NULL);

/*3 Usuwanie dodanych ograniczen*/

ALTER TABLE STANOWISKO
DROP CONSTRAINT STANOWISKO_PREMIA_NN;


/*4 Usuwanie dodanej kolumny */

ALTER TABLE STANOWISKO DROP (PREMIA);