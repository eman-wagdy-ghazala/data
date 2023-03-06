create database if not exists ahaijka ;
create table if not exists customers(
customers_id int primary key,
customers_name varchar(225) not null,
phone varchar(225) not null
);

create table if not exists orders(
order_id int primary key ,
order_data  date not null,
constraint_id int,
 constraint orderby foreign key(customar_id) references customers(customer_id)
 );
 
 create table if not exists products(
 products_id int primary key,
 renuction varchar (225) not null default'food',
 order_id int,
 foreign key(order_id) references orders(order_id)
 );
 