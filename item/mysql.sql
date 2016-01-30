create database books;

use books;

create table user_table
(
   user_id int auto_increment,
  user_name varchar(30) not null,
   user_pass varchar(16) not null,
  user_type int,
   user_mail varchar(30),
   user_phone varchar(20),
   user_qq   varchar(15),
   primary key(user_id),
   unique key(user_name)
);

create table book_table
(
   book_id int auto_increment,
   book_name varchar(50) not null,
   book_num  varchar(50) not null,
   book_kind varchar(50) not null,
   book_price varchar(50) not null,
   book_selluser varchar(50) not null,
   book_describe varchar(200),
   book_imgpath varchar(200) not null,
   primary key(book_id)
);

create table comments
(
    id int auto_increment,
	username varchar(25),
	b_id int,
	text varchar(200),
	dates date,
	primary key(id)
);

create table collects
(
    id int auto_increment,
	username varchar(25),
	b_id int,
	reason varchar(200),
	primary key(id)
);
