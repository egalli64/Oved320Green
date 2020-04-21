-- run this as root

drop user if exists green;
drop schema if exists green;

create user green identified by 'password';
create schema green;
grant all privileges on green.* to green;
grant alter routine on green.* to green;
