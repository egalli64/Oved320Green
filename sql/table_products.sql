
use green;
<<<<<<< HEAD

=======
drop table products ;
>>>>>>> branch 'master' of https://github.com/egalli64/Oved320Green.git
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
<<<<<<< HEAD
values ('3', ' Uova allevate a terra', '2.00');
insert into product (product_id,product_name,price_money)  
=======
values ('3', ' Uova', '2.00');
insert into products (product_id,product_name,price_money)  
>>>>>>> branch 'master' of https://github.com/egalli64/Oved320Green.git
values ('4', 'Carote','1.50');
insert into products (product_id,product_name,price_money)
values ('5', 'Pasta di Mandorle', '10.00');
insert into product (product_id,product_name,price_money)
values ('6','Riso Basmati','4.00');
insert into product (product_id,product_name,price_money)
values ('7','Vino Shiraz', '22.00');
insert into product (product_id,product_name,price_money),
values ('8','Caffè', '1.99');
insert into product (product_id,product_name,price_money),
values ('9','Olive','1.20');
insert into product (product_id,product_name,price_money),
values ('10','Mais','0.89');
insert into product (product_id,product_name,price_money),
values ('11','Latte','1.10');
insert into product (product_id,product_name,price_money),
values ('12','Pasta fresca','1.60');
insert into product (product_id,product_name,price_money),
values ('13','Pomodori Biologici','2.10');
insert into product (product_id,product_name,price_money),
values ('14','Amarena Luxardo Biologica','18.00');
insert into product (product_id,product_name,price_money),
values ('15','Carne di Manzo','13.00');
insert into product (product_id,product_name,price_money),
values ('16','Burro bologico','1.45');









select * from products;

