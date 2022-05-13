##########adding foreign key constraints###############
insert into gold_users values(59,'2023-01-13',13.8);

alter table gold_users
add constraint fk_uid
foreign key(uid) references users(user_id);

desc gold_users;

show create table gold_users;

insert into gold_users values(59,'2023-01-13',13.8);

select * from gold_users;

select *
from gold_users
where points >150;

select *
from gold_users
where points <150;

select *
from gold_users
where points >=93 and points<= 300;

select *
from gold_users
where points between 93 and 300;

select *
from gold_users
where end_date > '2019-12-01';

select *
from gold_users
where end_date < '2019-12-01';

select *
from gold_users
where end_date >='2019-12-01' and end_date<='2020-11-10';

select *
from gold_users
where end_date between'2019-12-01' and '2020-11-10';

select *
from gold_users
where end_date >=curdate();

select *
from gold_users
order by points;

select *
from gold_users
order by points desc;

select *
from gold_users
order by points desc
limit 3;

select *
from gold_users
order by points desc
limit 1;

select *
from gold_users
where end_date <=curdate()
order by end_date;

insert into gold_users values(34,'2020-11-01',132.8);

select *
from gold_users
order by end_date;

select *
from gold_users
order by end_date,points;

select *
from gold_users
order by end_date, points desc;

select *
from users
order by first_name,last_name;
