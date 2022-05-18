select * from users;
select * from gold_users;

show triggers from first_database;


create trigger autoEnrollGold
after insert
on  users
for each row
insert into gold_users(uid, end_date, points)
         values(new.user_id, DATE_ADD(CURDATE(), INTERVAL 1 YEAR),0);
         
show triggers from first_database;

insert into users values(40,'Alen','Alford','Alan_Alford63@hotmail.com','Wisconsin','+1 555 211 2562');


create table diamond_user1(uid int primary key,
                           wallet_balance int ,
                           foreign key(uid) references gold_users(uid));
                           
Delimiter //
create trigger enrollDiamondUsersToGold
before insert
on diamond_user1
for each row
if exists(select user_id from users where user_id = new.uid) then 
    if not exists(select uid from gold_users where uid = new.uid) then 
    insert into gold_users
						values(new.uid,
								DATE_ADD(CURDATE(), INTERVAL 1 YEAR),
									0);
    end if;
end if;
//
Delimiter ;

drop trigger enrollDiamondUsersToGold;

show triggers from first_database;

insert into diamond_user1 (uid, wallet_balance) values(31,10);

insert into diamond_user1 (uid, wallet_balance) values(11,72);

insert into diamond_user1 (uid, wallet_balance) values(30,72);

#cascading delete and update

show create table diamond_user1;


alter table diamond_user1
drop foreign key diamond_user1_ibfk_1;

show create table diamond_user1;


alter table diamond_user1
add constraint diamond_fk_uid
foreign key(uid) references gold_users(uid)
on delete cascade;

show create table diamond_user1;

SELECT * FROM first_database.diamond_user1;


insert into diamond_user1 values(19,70);

delete from gold_users where uid = 19;

SELECT * FROM first_database.diamond_user1;
select * from gold_users;

update gold_user
set uid = 19
where uid = 31;

alter table diamond_user1
drop foreign key diamond_fk_uid;

alter table diamond_user1
add constraint diamond_fk_uid
foreign key(uid) references gold_users(uid)
on delete cascade
on update cascade;


SELECT * FROM first_database.diamond_user1;
select * from gold_users;

update gold_users
set uid = 19
where uid = 31;

SELECT * FROM first_database.diamond_user1;
select * from gold_users;