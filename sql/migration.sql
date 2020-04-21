-- source this script from mySQL
use green;

-- TABELLA INTERMEDIA PRODOTTI e ORDINI --
drop table if exists intermedia;
create table intermedia
(

order_id int,
product_id int 
);

insert into intermedia (order_id,product_id)  values ('1','2');
insert into intermedia (order_id,product_id)  values ('2','7');


-- ORDERS -- 
drop table if exists orders;

create table orders
(

order_id integer primary key auto_increment,
-- order_date date,-- 
client_id int 
);


insert into orders (order_id, client_id) values ('1','2');
insert into orders (order_id, client_id) values ('2','3');
insert into orders (order_id, client_id) values ('3','2');
insert into orders (order_id, client_id) values ('4','5');
insert into orders (order_id, client_id) values ('5','7');



-- ------    -------    ---------  PRODUCTS ------    -------    ---------  -- 
drop table if exists products;
create table products
(

product_id int primary key not null,
product_name varchar(25) not null,
price_money decimal(6,2) not null
);

select * from products;
insert into products (product_id,product_name, price_money) 
values ('1','Scaldatelli','2.50');
insert into products (product_id,product_name, price_money) 
values ('2', 'Biscotti', '3.00');
insert into products (product_id,product_name,price_money) 
values ('3', ' Uova', '2.00');
insert into products (product_id,product_name,price_money)  
values ('4', 'Carote','1.50');
insert into products (product_id,product_name,price_money)
values ('5', 'Pasta di Mandorle', '10.00');
insert into products (product_id,product_name,price_money)
values ('6','Riso ','4.00');
insert into products (product_id,product_name,price_money)
values ('7','Vino', '22.00');
insert into products (product_id,product_name,price_money)
values ('8','Caffè', '1.99');
insert into products (product_id,product_name,price_money)
values ('9','Yogurt','1.20');
insert into products (product_id,product_name,price_money)
values ('10','Mais','0.89');
insert into products (product_id,product_name,price_money)
values ('11','Latte','1.10');
insert into products (product_id,product_name,price_money)
values ('12','Pasta integrale','1.60');
insert into products (product_id,product_name,price_money)
values ('13','Pomodori','2.10');
insert into products (product_id,product_name,price_money)
values ('14','Mele','1.80');
insert into products (product_id,product_name,price_money)
values ('15','Pane','1.45');
insert into products (product_id,product_name,price_money)
values ('16','Lenticchie','1.00');




-- -------   ---------      CLIENTS      ------    -------    ---------     ------------ 

drop table if exists clients;
create table clients(
	client_id integer primary key auto_increment, 
    username varchar(25) unique not null,
    psw varchar(25) not null,
	first_name varchar(20), 
	last_name varchar(25) not null, 
	email varchar(25) unique not null,
	phone_number varchar(20), 
	address varchar(50),
	n_address varchar(20),
    CAP varchar(7),
	city varchar(20)
);



-- alter table departments add constraint dept_mgr_fk foreign key(manager_id) references employees(employee_id);

insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('1','doconnel','abc123','Donald','OConnell','DOCONNEL','650.507.9833', 'Via Cola di Rie','135','00989','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('2','dgrant','abc123','Douglas','Grant','DGRANT','650.507.9844','Calle della Testa','93','10934','Venice');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('3','jwhalen','abc123','Jennifer','Whalen','JWHALEN','515.123.4444','Via Adalberto Catena' ,'231', '20121','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('4','mhartste','abc123','Michael','Hartstein','MHARTSTE','515.123.5555', 'Via Adalberto Catena', '189','20121', 'Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('5','pfay','abc123','Pat','Fay','PFAY','603.123.6666', 'Via Adalberto Catena', '205','20121', 'Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('6','smavris','abc123','Susan','Mavris','SMAVRIS','515.123.7777', 'Via Ancona', '45','20121','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('7','hbaer','abc123','Hermann','Baer','HBAER','515.123.8888', 'Via Ancona', '62','20121', 'Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('205','shiggins','abc123','Shelley','Higgins','SHIGGINS','515.123.8080', 'Largo Antonio Greppi','8','20121', 'Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('206','wgietz','abc123','William','Gietz','WGIETZ','515.123.8181', 'Largo Antonio Greppi','12','20121', 'Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('100','sking','abc123','Steven','King','SKING','515.123.4567', 'Largo Antonio Greppi','17','20121', 'Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('101','nkochhar','abc123','Neena','Kochhar','NKOCHHAR','515.123.4568', 'Via Sabina', '121', '20135','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('102','ldehaan','abc123','Lex','De Haan','LDEHAAN','515.123.4569', 'Via Sabina', '115', '20135','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('103','ahunold','abc123','Alexander','Hunold','AHUNOLD','590.423.4567', 'Via Sabina', '118', '20135','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('104','ebernst','abc123','Bruce','Ernst','BERNST','590.423.4568', 'Via Sabina', '150', '20135','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('105','daustin','abc123','David','Austin','DAUSTIN','590.423.4569', 'Via Sabina', '142', '20135','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('106','vpatabal','abc123','Valli','Pataballa','VPATABAL','590.423.4560', 'Via Sabina', '136', '20135','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('107','dlorentz','abc123','Diana','Lorentz','DLORENTZ','590.423.5567', 'Via Presolana', '8', '20135', 'Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('108','ngreenbe','abc123','Nancy','Greenberg','NGREENBE','515.124.4569', 'Via Presolana', '12', '20135', 'Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('109','dfaviet','abc123','Daniel','Faviet','DFAVIET','515.124.4169', 'Via Presolana', '10', '20135', 'Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('110','JCHEN','abc123','John','Chen','JCHEN','515.124.4269', 'Via Abbondio Sangiorgio','71','20145','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('111','ISCIARRA','abc123','Ismael','Sciarra','ISCIARRA','515.124.4369','Via Abbondio Sangiorgio','67','20145','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('112','JMURMAN','abc123','Jose Manuel','Urman','JMURMAN','515.124.4469', 'Via Abbondio Sangiorgio','70','20145','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('113','LPOPP','abc123','Luis','Popp','LPOPP','515.124.4567', 'Via Abbondio Sangiorgio',' 68','20145','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('114','DRAPHEAL','abc123','Den','Raphaely','DRAPHEAL','515.127.4561', 'Via Giotto','24', '20145','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('115','AKHOO','abc123','Alexander','Khoo','AKHOO','515.127.4562', 'Via Giotto','27', '20145','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('116','sbaida','abc123','Shelli','Baida','SBAIDA','515.127.4563', 'Via Giotto','30', '20145','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('117','stobias','abc123','Sigal','Tobias','STOBIAS','515.127.4564', 'Via Tintoretto', '50','20145', 'Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('118','ghimuro','abc123','Guy','Himuro','GHIMURO','515.127.4565', 'Via Tintoretto', '57','20145', 'Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('119','kcolmena','abc123','Karen','Colmenares','KCOLMENA','515.127.4566','Viale Etiopia','52','20146','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('120','mweiss','abc123','Matthew','Weiss','MWEISS','650.123.1234', 'Viale Etiopia','55','20146','Milano');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('121','afripp','abc123','Adam','Fripp','AFRIPP','650.123.2234', 'Via Carlo Riva', '20', '00157','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('122','pkauflin','abc123','Payam','Kaufling','PKAUFLIN','650.123.3234', 'Via Carlo Riva', '21', '00157','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('123','svollman','abc123','Shanta','Vollman','SVOLLMAN','650.123.4234', 'Via Carlo Riva', '25', '00157','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('124','kmourgos','abc123','Kevin','Mourgos','KMOURGOS','650.123.5234', 'Via Carlo Riva', '28', '00157','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('125','jnayer','abc123','Julia','Nayer','JNAYER','650.124.1214','Via dei Monti Triburtini', '64','00157','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('126','imikkili','abc123','Irene','Mikkilineni','IMIKKILI','650.124.1224','Via dei Monti Triburtini', '62','00157','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('127','jlandry','abc123','James','Landry','JLANDRY','650.124.1334','Via dei Durantini', '58','00157','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('128','smarkle','abc123','Steven','Markle','SMARKLE','650.124.1434','Via dei Durantini', '21','00157','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('129','lbissot','abc123','Laura','Bissot','LBISSOT','650.124.5234','Via di Pietralata', '330','00157','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('144','pvargas','abc123','Peter','Vargas','PVARGAS','650.121.2004','Via di Pietralata', '325','00157','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('145','jrussel','abc123','John','Russell','JRUSSEL','011.44.1344.429268','Via Udine','5','00161','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('146','kpartners','abc123','Karen','Partners','KPARTNER','011.44.1344.467268','Via Udine','7','00161','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('147','aerrazur','abc123','Alberto','Errazuriz','AERRAZUR','011.44.1344.429278','Via Udine','9','00161','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('148','gcambrau','abc123','Gerald','Cambrault','GCAMBRAU','011.44.1344.619268', 'Via Como','37','00161','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('149','ezlotkey','abc123','Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018', 'Via Como','35','00161','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('150','ptucker','abc123','Peter','Tucker','PTUCKER','011.44.1344.129268', 'Via Lucca','7','00161','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('151','dbernste','abc123','David','Bernstein','DBERNSTE','011.44.1344.345268','Via Forlì','43','00161','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('152','phall','abc123','Peter','Hall','PHALL','011.44.1344.478968', 'Via Flavia','83','00187','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('153','colsen','abc123','Christopher','Olsen','COLSEN','011.44.1344.498718','Via Flavia','81','00187','Roma');
insert into clients (client_id, username, psw, first_name, last_name, email, phone_number, address, n_address,CAP, city) values ('154','ncambrau','abc123','Nanette','Cambrault','NCAMBRAU','011.44.1344.987668', 'Via Belisario','102','00187','Roma');


commit;