create user green identified by 'password'; -- password delimitata da apici e case sensitive
create schema green; -- ambito in cui sono definiti oggetti correlati (in MySQL è sinonimo di database)
grant all privileges on green.* to green; -- tutti i privilegi standard sullo schema me all’utente me
grant alter routine on green.* to green; -- privilegi per modificare le procedure
-- drop user me --
-- drop user green;
-- drop schema green;