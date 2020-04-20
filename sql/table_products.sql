use green;
create table products
(

product_id int primary key not null,
product_name varchar(25) not null,
price_money decimal 
);

select * from products;

insert into products (product_id,product_name, price_money) 
values ('1','Scaldatelli','2.50');
insert into products (product_id,product_name, price_money) 
values ('2', 'Biscotti da Latte', '3.00');
insert into products (product_id,product_name,price_money) 
values ('3', ' Uova' '2.00');
insert into product (product_id,product_name,price_money)  
values ('4', 'Carote','1.50');
insert into product (product_id,product_name,price_money)
values ('5', 'Pasta di Mandorle', '10.00');



