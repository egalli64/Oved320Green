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
    CAP varchar(7),
	city varchar(20)
);

select * from clients;

-- alter table departments add constraint dept_mgr_fk foreign key(manager_id) references employees(employee_id);

insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values (198,'Donald','OConnell','DOCONNEL','650.507.9833', 'Via Cola di Rie','135','00989','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('199','Douglas','Grant','DGRANT','650.507.9844','Calle della Testa','93','10934','Venice');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('200','Jennifer','Whalen','JWHALEN','515.123.4444','Via Adalberto Catena' ,'231', '20121','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('201','Michael','Hartstein','MHARTSTE','515.123.5555', 'Via Adalberto Catena', '189','20121', 'Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('202','Pat','Fay','PFAY','603.123.6666', 'Via Adalberto Catena', '205','20121', 'Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('203','Susan','Mavris','SMAVRIS','515.123.7777', 'Via Ancona', '45','20121','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('204','Hermann','Baer','HBAER','515.123.8888', 'Via Ancona', '62','20121', 'Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('205','Shelley','Higgins','SHIGGINS','515.123.8080', 'Largo Antonio Greppi','8','20121', 'Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('206','William','Gietz','WGIETZ','515.123.8181', 'Largo Antonio Greppi','12','20121', 'Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('100','Steven','King','SKING','515.123.4567', 'Largo Antonio Greppi','17','20121', 'Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('101','Neena','Kochhar','NKOCHHAR','515.123.4568', 'Via Sabina', '121', '20135','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('102','Lex','De Haan','LDEHAAN','515.123.4569', 'Via Sabina', '115', '20135','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('103','Alexander','Hunold','AHUNOLD','590.423.4567', 'Via Sabina', '118', '20135','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('104','Bruce','Ernst','BERNST','590.423.4568', 'Via Sabina', '150', '20135','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('105','David','Austin','DAUSTIN','590.423.4569', 'Via Sabina', '142', '20135','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('106','Valli','Pataballa','VPATABAL','590.423.4560', 'Via Sabina', '136', '20135','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('107','Diana','Lorentz','DLORENTZ','590.423.5567', 'Via Presolana', '8', '20135', 'Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('108','Nancy','Greenberg','NGREENBE','515.124.4569', 'Via Presolana', '12', '20135', 'Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('109','Daniel','Faviet','DFAVIET','515.124.4169', 'Via Presolana', '10', '20135', 'Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('110','John','Chen','JCHEN','515.124.4269', 'Via Abbondio Sangiorgio','71','20145','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('111','Ismael','Sciarra','ISCIARRA','515.124.4369','Via Abbondio Sangiorgio','67','20145','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('112','Jose Manuel','Urman','JMURMAN','515.124.4469', 'Via Abbondio Sangiorgio','70','20145','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('113','Luis','Popp','LPOPP','515.124.4567', 'Via Abbondio Sangiorgio',' 68','20145','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('114','Den','Raphaely','DRAPHEAL','515.127.4561', 'Via Giotto','24', '20145','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('115','Alexander','Khoo','AKHOO','515.127.4562', 'Via Giotto','27', '20145','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('116','Shelli','Baida','SBAIDA','515.127.4563', 'Via Giotto','30', '20145','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('117','Sigal','Tobias','STOBIAS','515.127.4564', 'Via Tintoretto', '50','20145', 'Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('118','Guy','Himuro','GHIMURO','515.127.4565', 'Via Tintoretto', '57','20145', 'Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('119','Karen','Colmenares','KCOLMENA','515.127.4566','Viale Etiopia','52','20146','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('120','Matthew','Weiss','MWEISS','650.123.1234', 'Viale Etiopia','55','20146','Milano');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('121','Adam','Fripp','AFRIPP','650.123.2234', 'Via Carlo Riva', '20', '00157','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('122','Payam','Kaufling','PKAUFLIN','650.123.3234', 'Via Carlo Riva', '21', '00157','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('123','Shanta','Vollman','SVOLLMAN','650.123.4234', 'Via Carlo Riva', '25', '00157','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('124','Kevin','Mourgos','KMOURGOS','650.123.5234', 'Via Carlo Riva', '28', '00157','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('125','Julia','Nayer','JNAYER','650.124.1214','Via dei Monti Triburtini', '64','00157','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('126','Irene','Mikkilineni','IMIKKILI','650.124.1224','Via dei Monti Triburtini', '62','00157','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('127','James','Landry','JLANDRY','650.124.1334','Via dei Durantini', '58','00157','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('128','Steven','Markle','SMARKLE','650.124.1434','Via dei Durantini', '21','00157','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('129','Laura','Bissot','LBISSOT','650.124.5234','Via di Pietralata', '330','00157','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('144','Peter','Vargas','PVARGAS','650.121.2004','Via di Pietralata', '325','00157','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('145','John','Russell','JRUSSEL','011.44.1344.429268','Via Udine','5','00161','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('146','Karen','Partners','KPARTNER','011.44.1344.467268','Via Udine','7','00161','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('147','Alberto','Errazuriz','AERRAZUR','011.44.1344.429278','Via Udine','9','00161','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('148','Gerald','Cambrault','GCAMBRAU','011.44.1344.619268', 'Via Como','37','00161','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('149','Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018', 'Via Como','35','00161','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('150','Peter','Tucker','PTUCKER','011.44.1344.129268', 'Via Lucca','7','00161','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('151','David','Bernstein','DBERNSTE','011.44.1344.345268','Via Forlì','43','00161','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('152','Peter','Hall','PHALL','011.44.1344.478968', 'Via Flavia','83','00187','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('153','Christopher','Olsen','COLSEN','011.44.1344.498718','Via Flavia','81','00187','Roma');
insert into clients (client_id, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('154','Nanette','Cambrault','NCAMBRAU','011.44.1344.987668', 'Via Belisario','102','00187','Roma');