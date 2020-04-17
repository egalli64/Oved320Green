use green;
drop table clients;
create table clients(
	client_id integer primary key auto_increment, 
	first_name varchar(20), 
	last_name varchar(25) not null, 
	email varchar(25) unique not null,
	phone_number varchar(20), 
	address varchar(50),
	n_address varchar(20),
	city varchar(20)
);

select * from clients;

-- alter table departments add constraint dept_mgr_fk foreign key(manager_id) references employees(employee_id);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city)
			values (198,'Donald','OConnell','DOCONNEL','650.507.9833', '1297 Via Cola di Rie','00989','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('199','Douglas','Grant','DGRANT','650.507.9844','93091 Calle della Testa','10934','Venice');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('200','Jennifer','Whalen','JWHALEN','515.123.4444', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('201','Michael','Hartstein','MHARTSTE','515.123.5555', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('202','Pat','Fay','PFAY','603.123.6666', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('203','Susan','Mavris','SMAVRIS','515.123.7777', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('204','Hermann','Baer','HBAER','515.123.8888', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('205','Shelley','Higgins','SHIGGINS','515.123.8080', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('206','William','Gietz','WGIETZ','515.123.8181', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('100','Steven','King','SKING','515.123.4567', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('101','Neena','Kochhar','NKOCHHAR','515.123.4568', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('102','Lex','De Haan','LDEHAAN','515.123.4569', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('103','Alexander','Hunold','AHUNOLD','590.423.4567', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('104','Bruce','Ernst','BERNST','590.423.4568', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('105','David','Austin','DAUSTIN','590.423.4569', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('106','Valli','Pataballa','VPATABAL','590.423.4560', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('107','Diana','Lorentz','DLORENTZ','590.423.5567', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('108','Nancy','Greenberg','NGREENBE','515.124.4569', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('109','Daniel','Faviet','DFAVIET','515.124.4169', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('110','John','Chen','JCHEN','515.124.4269', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('111','Ismael','Sciarra','ISCIARRA','515.124.4369', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('112','Jose Manuel','Urman','JMURMAN','515.124.4469', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('113','Luis','Popp','LPOPP','515.124.4567', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('114','Den','Raphaely','DRAPHEAL','515.127.4561', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('115','Alexander','Khoo','AKHOO','515.127.4562', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('116','Shelli','Baida','SBAIDA','515.127.4563', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('117','Sigal','Tobias','STOBIAS','515.127.4564', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('118','Guy','Himuro','GHIMURO','515.127.4565', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('119','Karen','Colmenares','KCOLMENA','515.127.4566', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('120','Matthew','Weiss','MWEISS','650.123.1234', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('121','Adam','Fripp','AFRIPP','650.123.2234', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('122','Payam','Kaufling','PKAUFLIN','650.123.3234', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('123','Shanta','Vollman','SVOLLMAN','650.123.4234', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('124','Kevin','Mourgos','KMOURGOS','650.123.5234', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('125','Julia','Nayer','JNAYER','650.124.1214', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('126','Irene','Mikkilineni','IMIKKILI','650.124.1224', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('127','James','Landry','JLANDRY','650.124.1334', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('128','Steven','Markle','SMARKLE','650.124.1434', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('129','Laura','Bissot','LBISSOT','650.124.5234', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('144','Peter','Vargas','PVARGAS','650.121.2004', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('145','John','Russell','JRUSSEL','011.44.1344.429268', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('146','Karen','Partners','KPARTNER','011.44.1344.467268', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('147','Alberto','Errazuriz','AERRAZUR','011.44.1344.429278', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('148','Gerald','Cambrault','GCAMBRAU','011.44.1344.619268', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('149','Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('150','Peter','Tucker','PTUCKER','011.44.1344.129268', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('151','David','Bernstein','DBERNSTE','011.44.1344.345268', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('152','Peter','Hall','PHALL','011.44.1344.478968', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('153','Christopher','Olsen','COLSEN','011.44.1344.498718', address, n_address, city);
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address, city) values ('154','Nanette','Cambrault','NCAMBRAU','011.44.1344.987668', address, n_address, city);