
use green;

create table orders
(

order_id int primary key not null,
order_date date,
client_id int 
);

select * from orders;

insert into orders (order_id,order_date, client_id) 
values ('1','','');
