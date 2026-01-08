
use projec1;
create table customer
(
customer_id int primary key,
name_s varchar(50),
email varchar(50),
city varchar(50),
signup_update date
);

create table product
(
product_id int primary key,
product_name varchar(100),
category varchar(50),
price decimal(10,2)

);

create table orders
(
order_id int primary key,
customer_id int,
order_date date,
total_amount decimal (10,2),
foreign key (customer_id) references customer(customer_id)
);

create table orders_items
(
orders_items_id int primary key,
orders_id int,
product_id int,
quantity int,
item_price decimal(10,2),
foreign key (orders_id) references orders(order_id),
foreign key (product_id) references product(product_id)
);

