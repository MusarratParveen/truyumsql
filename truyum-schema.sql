create database truyum;
use truyum;

create table user(
u_id int auto_increment primary key,
u_name varchar(30)
);

create table menu_items(
id int auto_increment primary key,
name varchar(30),
price decimal(8,2),
active varchar(3),
date_of_launch date,
category varchar(45),
free_delivery varchar(3)
);

create table cart(
cart_id int auto_increment primary key,
cart_u_id int,
cart_m_id int,
foreign key(cart_u_id) references user(u_id),
foreign key(cart_m_id) references menu_items(id)
);
describe cart;
show tables;