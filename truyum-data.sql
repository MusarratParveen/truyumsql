use truyum;

insert into menu_items(name,price,active,date_of_launch,category,free_delivery)
values('Sandwich',99,'Yes','2017-03-15','Main Course','Yes'),
('Burger',129,'Yes','2017-12-23','Main Course','No'),
('Pizza',149,'Yes','2017-08-21','Main Course','No'),
('French fries',57,'No','2017-07-02','Starter','Yes'),
('Chocolate Brownie',32,'Yes','2022-11-02','Dessert','Yes');

select* from menu_items;

select* from menu_items
where date_of_launch < curdate() and active='Yes';

select name from menu_items
where name = 'Sandwich';

update menu_items
set id=1, name='Salad', price=78, active='Yes', date_of_launch='2017-11-21', category='Starter', free_delivery='Yes'
where id=1 and name = 'Sandwich' and price=99 and active='Yes' and date_of_launch='2017-03-15' and category='Main Course' and free_delivery='Yes';

select* from  menu_items;

insert into user(u_name)
values('Admin'), ('Customer');

insert into cart(cart_u_id, cart_m_id)
values(2,1), (2,2), (2,3);

select* from user;

describe user;

select* from cart;

select menu_items.name, menu_items.price,menu_items.free_delivery from menu_items
inner join cart on menu_items.id=cart.cart_id;

select cart.cart_u_id, user.u_name, sum(menu_items.price) from menu_items
inner join cart on menu_items.id=cart.cart_m_id
inner join user on user.u_id=cart.cart_u_id;

delete from cart 
where cart_u_id=2 and cart_m_id=3;
select * from cart;





