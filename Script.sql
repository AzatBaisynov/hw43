create table user_info(
id serial primary key,
name varchar(50) not null,
age integer not null,
product integer references product(id) 
);


create table product(
id serial primary key,
firm varchar(100) not null,
product_name varchar (50) unique not null,
price integer not null
);

insert into product(firm, product_name, price) values ('Apple', 'IPhoneX', 60000);
insert into product(firm, product_name, price) values ('Acer', 'Laptop', 20000);
insert into product(firm, product_name, price) values ('Xiaomi', 'Watches', 20000);
insert into product(firm, product_name, price) values ('Samsung', 'Phone', 40000);
insert into product(firm, product_name, price) values ('Lenovo', 'Tablet', 9000);

insert into user_info(name, age, product) values ('Alex', 23,1);
insert into user_info(name, age, product) values ('Sam',19,2);
insert into user_info(name, age, product) values ('Nick',21,null);
insert into user_info(name, age, product) values ('James',35,4);
insert into user_info(name, age, product) values ('Nickole',27,5);

select id from user_info;
select name from user_info;
select age from user_info;
select product from user_info;

select id from product;
select firm from product;
select product_name from product;
select price from product;

select * from user_info;
select * from product;

2. Mojno li vypolnit sleduyusuyu komandu (True / False)
FROM Customers
SELECT last_name , first_name    ------------- False
;

3;
select id,name from user_info;

4. mojno li vypolnit sleduyushuu komandu (True / False);
Select   strt_date, monthly_payment
FROM   packages;           -------------------- True
;

5. mojno li vypolnit sleduyushuu komandu  (True / False)
SeleCT        last_NAME , fiRST_NamE , FROM customers   ----- False

6. sdelaite dannye tablicy tak choby, left, right, outer, inner join tablic
polzovatel, davali raznye rezultaty:
select * from user_info uf left join product p on uf.product = p.id;
select * from user_info uf right join product p on uf.product = p.id;
select * from user_info uf full outer join product p on uf.product = p.id;
select * from user_info uf inner join product p on uf.product = p.id;