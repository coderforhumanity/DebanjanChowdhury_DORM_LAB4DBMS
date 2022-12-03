create database dbms_lab1;

use dbms_lab1;

create table supplier(
SUPP_ID INT PRIMARY KEY,
SUPP_NAME VARCHAR(50) NOT NULL,
SUPP_CITY VARCHAR(50) NOT NULL,
SUPP_PHONE VARCHAR(50) NOT NULL
);

create table customer(
CUS_ID INT PRIMARY KEY,
CUS_NAME VARCHAR(20) NOT NULL,
CUS_PHONE VARCHAR(10) NOT NULL,
CUS_CITY VARCHAR(30) NOT NULL,
CUS_GENDER CHAR
);

create table category(
CAT_ID INT PRIMARY KEY,
CAT_NAME VARCHAR(20) NOT NULL
);

create table product(
PRO_ID INT PRIMARY KEY,
PRO_NAME VARCHAR(20) NOT NULL DEFAULT "Dummy",
PRO_DESC VARCHAR(60),
CAT_ID INT,FOREIGN KEY (CAT_ID) REFERENCES category(CAT_ID)
);

create table supplier_pricing(
PRICING_ID INT PRIMARY KEY,
PRO_ID INT,
FOREIGN KEY (PRO_ID) REFERENCES product(PRO_ID),
SUPP_ID INT,
FOREIGN KEY(SUPP_ID) REFERENCES supplier(SUPP_ID),
SUPP_PRICE INT DEFAULT 0
);

create table orders(
ORD_ID INT PRIMARY KEY,
ORD_AMOUNT INT NOT NULL,
ORD_DATE DATE NOT NULL,
CUS_ID INT,
FOREIGN KEY(CUS_ID) REFERENCES customer(CUS_ID),
PRICING_ID INT,
FOREIGN KEY(PRICING_ID) REFERENCES supplier_pricing(PRICING_ID)
);

create table rating(
RAT_ID INT PRIMARY KEY,
ORD_ID INT,
FOREIGN KEY(ORD_ID) REFERENCES orders(ORD_ID),
RAT_RATSTARS INT NOT NULL
);

insert into supplier values(1, "Rajesh Retails", "Delhi", "1234567890");
insert into supplier values(2, "Appario Ltd.", "Mumbai", "2589631470");
insert into supplier values(3, "Knome products", "Bangalore", "9785462315");
insert into supplier values(4, "Bansal Retails", "Kochi", "8975463285");
insert into supplier values(5, "Mittal Ltd.", "Lucknow", "7898456532");
insert into customer values(1, "AAKASH", "9999999999", "DELHI", "M");
insert into customer values(2, "AMAN", "9785463215", "NOIDA", "M");
insert into customer values(3, "NEHA", "9999999999", "MUMBAI", "F");
insert into customer values(4, "MEGHA", "9994562399", "KOLKATA", "F");
insert into customer values(5, "PULKIT", "7895999999", "LUCKNOW", "M");

insert into category values(1, "BOOKS");
insert into category values(2, "GAMES");
insert into category values(3, "GROCERIES");
insert into category values(4, "ELECTRONICS");
insert into category values(5, "CLOTHES");

insert into product values (1, "GTA V", "Windows 7 and above with i5 processor and 8GB RAM", 2);
insert into product values (2, "TSHIRT", "SIZE-L with Black, Blue and White variations", 5);
insert into product values (3, "ROG LAPTOP", "Windows 10 with 15 inch screen, i7 processor, 1TB SSD", 4);
insert into product values (4, "OATS", "Highly nutritious from Nestle", 3);
insert into product values (5, "HARRY POTTER", "Best Collection of all time by J.K Rowling", 1);
insert into product values (6, "MILK", "1L Toned Milk", 3);
insert into product values (7, "Boat Earphones", "1.5 Meter long Dolby Atmos", 4);
insert into product values (8, "Jeans", "Stretchable Denim Jeans with various sizes and color", 5);
insert into product values (9, "Project IGI", "compatible with windows 7 and above", 2);
insert into product values (10, "Hoodie", "Black GUCCI for 13 yrs and above", 5);
insert into product values (11, "Rich Dad Poor Dad", "Written by Robert Kiyosaki", 1);
insert into product values (12, "Train Your Brain", "By Shireen Stephen", 1);

INSERT INTO SUPPLIER_PRICING VALUES(1,1,2,1500);
INSERT INTO SUPPLIER_PRICING VALUES(2,3,5,30000);
INSERT INTO SUPPLIER_PRICING VALUES(3,5,1,3000);
INSERT INTO SUPPLIER_PRICING VALUES(4,2,3,2500);
INSERT INTO SUPPLIER_PRICING VALUES(5,4,1,1000);
INSERT INTO SUPPLIER_PRICING VALUES(6,12,2,780);
INSERT INTO SUPPLIER_PRICING VALUES(7,12,4,789);
INSERT INTO SUPPLIER_PRICING VALUES(8,3,1,31000);
INSERT INTO SUPPLIER_PRICING VALUES(9,1,5,1450);
INSERT INTO SUPPLIER_PRICING VALUES(10,4,2,999);
INSERT INTO SUPPLIER_PRICING VALUES(11,7,3,549);
INSERT INTO SUPPLIER_PRICING VALUES(12,7,4,529);
INSERT INTO SUPPLIER_PRICING VALUES(13,6,2,105);
INSERT INTO SUPPLIER_PRICING VALUES(14,6,1,99);
INSERT INTO SUPPLIER_PRICING VALUES(15,2,5,2999);
INSERT INTO SUPPLIER_PRICING VALUES(16,5,2,2999);

insert into orders values (101, 1500, "2021-10-06", 2, 1);
insert into orders values (102, 1000, "2021-10-12", 3, 5);
insert into orders values (103, 30000, "2021-09-16", 5, 2);
insert into orders values (104, 1500, "2021-10-05", 1, 1);
insert into orders values (105, 3000, "2021-08-16", 4, 3);
insert into orders values (106, 1450, "2021-08-18", 1, 9);
insert into orders values (107, 789, "2021-09-01", 3, 7);
insert into orders values (108, 780, "2021-09-07", 5, 6);
insert into orders values (109, 3000, "2021-00-10", 5, 3);
insert into orders values (110, 2500, "2021-09-10", 2, 4);
insert into orders values (111, 1000, "2021-09-15", 4, 5);
insert into orders values (112, 789, "2021-09-16", 4, 7);
insert into orders values (113, 31000, "2021-09-16", 1, 8);
insert into orders values (114, 1000, "2021-09-16", 3, 5);
insert into orders values (115, 3000, "2021-09-16", 5, 3);
insert into orders values (116, 99, "2021-09-17", 2, 14);

insert into rating values (1, 101, 4);
insert into rating values (2, 102, 3);
insert into rating values (3, 103, 1);
insert into rating values (4, 104, 2);
insert into rating values (5, 105, 4);
insert into rating values (6, 106, 3);
insert into rating values (7, 107, 4);
insert into rating values (8, 108, 4);
insert into rating values (9, 109, 3);
insert into rating values (10, 110, 5);
insert into rating values (11, 111, 3);
insert into rating values (12, 112, 4);
insert into rating values (13, 113, 2);
insert into rating values (14, 114, 1);
insert into rating values (15, 115, 1);
insert into rating values (16, 116, 0);


select cus_gender,count(cus_gender) from customer where cus_id in (select cus_id from orders group by cus_id having max(ord_amount)>=3000) group by cus_gender;

select o.ord_id as ord_id, o.ord_amount as ord_amount, o.ord_date as ord_date, o.pricing_id as pricing_id, p.pro_name as pro_name from orders o, product p where cus_id = 2 and pro_name in (select pro_name from product where pro_id in (select pro_id from supplier_pricing where pricing_id in (select pricing_id from orders where cus_id=2)));

select * from supplier where supp_id in (select supp_id from supplier_pricing group by supp_id having count(pro_id)>1);

select pro_id, pro_name from product where pro_id in (select pro_id from supplier_pricing where pricing_id in (select pricing_id from orders where ord_date > "2021-10-05"));

select cus_name, cus_gender from customer where cus_name like 'a%' or cus_name like '%a';
