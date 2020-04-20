
use green;

create table orders
(

order_id integer primary key auto_increment,
order_date date,
client_id int 
);

select * from orders;

insert into orders (order_id,order_date, client_id) 
values ('1','','');
