
use green;

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
values ('2', 'Biscotti da Latte', '3.00');
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
values ('9','Olive','1.20');
insert into products (product_id,product_name,price_money)
values ('10','Mais','0.89');
insert into products (product_id,product_name,price_money)
values ('11','Latte','1.10');
insert into products (product_id,product_name,price_money)
values ('12','Pasta fresca','1.60');
insert into products (product_id,product_name,price_money)
values ('13','Pomodori','2.10');
insert into products (product_id,product_name,price_money)
values ('14','Amarene','18.00');
insert into products (product_id,product_name,price_money)
values ('16','Burro','1.45');




select * from products; 







