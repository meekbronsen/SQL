-- Data remains consitent throught the transaction meaning the late comers are left out

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

START TRANSACTION;
SELECT * FROM customers WHERE state = "VA";
COMMIT;