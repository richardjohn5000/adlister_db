Create database if not exists ulysses_db;
USE ulysses_db;


drop table users;
create table users (
id int unsigned not null auto_increment,
  name varchar(100),
email varchar(255),
password varchar(255),
primary key(id),
unique(email)
);

insert into users (name, email, password) values
('Daphne','daphne@mystery.com','password'),
('Velma','velma@mystery.com','password'),
('Scooby','Scooby@mystery.com','password'),
('Shaggy','Shaggy@mystery.com','password'),
('Fred','Fred@mystery.com','password');

select * from users;


drop table ads;
create table ads (
id int unsigned not null auto_increment,
content text,

title varchar(100),
primary key(id)
);

drop table ad_category;
TRUNCATE ads;
insert into ads (content, title)

 values
  ('Flux Capacitor for Sale','for sale'),
  ('looking for Flux Capacitor','WTB'),
  ('Lost: Flux Capacitor','Lost'),
  ('Found: Flux Capacitor','Found'),
  ('Giveaway: flux Capacitor','Giveaway'),
  ('Flux Capacitor Tech looking for work','Job Seeker'),
  ('Can someone teach me to use a Flux Capacitor','Help Wanted'),
  ('I think my Flux Capacitor is haunted','Mystery');

select * from ads;


create table categories(
id int unsigned not null auto_increment,
category varchar(210),
primary key(id)

);

drop table ad_category;
truncate categories;
insert into categories(category) values
 ('Seeking Jobs'),
 ('Help Wanted'),
 ('Lost'),
 ('Found'),
 ('Give Aways'),
 ('For Sale'),
 ('Want to Buy');


select * from categories;

drop table ad_category;
Create Table IF NOT EXISTS ad_category(
  ad_id int unsigned not null,
  category_id int unsigned not null,
  foreign key (ad_id) references ads(id),
  foreign key (category_id) references categories(id)
);

select * from ad_category;
select * from ads;
select * from users;