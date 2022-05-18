select * from gold_users;

create procedure get_gold_users()
begin
select * from gold_users;
end

Delimiter //
create procedure get_gold_users()
begin
select uid from gold_users;
end
//
Delimiter ;

show procedure status where db = 'first_database';

call first_database.get_gold_users();

call get_gold_users();

Delimiter //
drop procedure if exists get_gold_users;
create procedure get_gold_users()
begin
declare userid int;
set userid = 10;
select * from gold_users
where uid = userid;
end
//
Delimiter ;

call get_gold_users;

Delimiter //
drop procedure if exists get_gold_users;
create procedure get_gold_users(in userid int)
begin
select * from gold_users
where uid = userid;
end
//
Delimiter ;

call get_gold_users(10);
call get_gold_users(33);

Delimiter //
drop procedure if exists create_new_users;
create procedure create_new_users(in arg_user_id int,
                                  in arg_first_name varchar(255),
                                  in arg_last_name varchar(255),
                                  in arg_email_id varchar(255),
                                  in arg_city varchar(255),
                                 in arg_phone varchar(255) )
begin
insert into users values(arg_user_id,arg_first_name,arg_last_name,arg_email_id,arg_city,arg_phone);
end
//
Delimiter ;

show procedure status where db = 'first_database';

call create_new_users(100,'Rick','Tallon','Rick_Tallon89@gmail.com','Trenton','+1 555 222 2501');

select * from users;

call create_new_users(100,'Renee','Bauer','renee_bauer70@hotmail.com','pullman','+1 555 110 4321');

Delimiter //
drop procedure if exists create_new_users;
create procedure create_new_users(in arg_user_id int,
                                  in arg_first_name varchar(255),
                                  in arg_last_name varchar(255),
                                  in arg_email_id varchar(255),
                                  in arg_city varchar(255),
                                 in arg_phone varchar(255) )
begin
if not exists(select user_id from users where user_id = arg_user_id) then 
insert into users values(arg_user_id,arg_first_name,arg_last_name,arg_email_id,arg_city,arg_phone);

else
   select 'User ID already in use Please choose another.' ;
end if;
end
//
Delimiter ;

call create_new_users(101,'Renee','Bauer','renee_bauer70@hotmail.com','pullman','+1 555 110 4321');

select * from users;

create table diamond_users(uid int, wallet_balance int);

Delimiter //
drop procedure if exists create_new_users;
create procedure create_new_users(in arg_user_id int,
                                  in arg_first_name varchar(255),
                                  in arg_last_name varchar(255),
                                  in arg_email_id varchar(255),
                                  in arg_city varchar(255),
                                 in arg_phone varchar(255), 
                                 in arg_is_gold_users bool,
                                 in arg_is_diamond_users bool)
begin
if not exists(select user_id from users where user_id = arg_user_id) then 
insert into users values(arg_user_id,arg_first_name,arg_last_name,arg_email_id,arg_city,arg_phone);

end if;
if(arg_is_gold_users) then 
       insert into gold_users(uid, end_date, points)
       values(arg_user_id, DATE_ADD(CURDATE(), INTERVAL 1 YEAR), 0);
       if(arg_is_diamond_users) then
          insert into diamond_users(uid,wallet_balance)
                  values(arg_user_id, 100);
	   end if;
end if;
  if(arg_is_diamond_users) then 
      if not exists (select uid from gold_users where uid = arg_user_id) then
         select 'All Diamond users need to be Gold users.';
	  end if;
end if;
end
//
Delimiter ;

call create_new_users(666,'Nikki','Flores','Nikki_Flores77@hotmail.com','Savannah','+1 555 990 9321',False,True);

call create_new_users(777,'Rob','Lawrence','rob_lawrence@hotmail.com','Charleston','+1 555 990 9322',False,False);

call create_new_users(889,'Zachary','MacKenzie','zacharymackenzie9@hotmail.com','Santa Fe','+1 555 990 9323',true,True);


select * from users;
select * from gold_users;
select * from diamond_users;