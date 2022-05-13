create database first_database;

use first_database;

show tables;

create table users(user_id int,
                   first_name varchar(255) not null,
                   last_name varchar(255),
                   email_id varchar(255),
                   city varchar(255),
                   phone varchar(255) not null,
                   primary key(user_id));
                   
desc users;

 insert into users values(10, 'Claudia', 'Sand', 'Claudia.Sand@hotmail.com', 'Hanover', 
                                  '+1 555 234 5678');
						
insert into users values(20, 'Julio', 'Chavez', 'chavezj317@gmail.com', 'Savannah',
                                     '+1 555 890 9898');
                                     
insert into users values(15, 'Neil', 'Parks', 'neil_parks82@hotmail.com', 'Pleasnton',
                                     '+1 555 567 3456');  
                      
insert into users values(19, 'Gina', 'Ortiz', 'gina_ortiza@hotmail.com', 'Hempstead',
                                     '+1 555 963 8521');
                                     
 insert into users values(11, 'Raj', 'Chawanda', 'raj_chawanda@hotmail.com', 'Springfield',
                                    '+1 555 211 2563' ); 
                                    
 insert into users values(31, 'Marcia', 'Lin', 'Marcia_Lin89@hotmail.com', 'Springfield',
                                    '+1 555 234 8765' );
                                    
insert into users values(33, 'Chen', 'Lin', 'Chen.LinUK@gmail.com', 'Moab',
                                    '+1 555 111 0357' );                                     
 
 insert into users values(34, 'Charles', 'Lin', 'chlin@qenel.com', 'Moab',
                                    '+1 555 111 9999' ); 
                                    
 insert into users values(24, 'Martha', 'Horowitz', 'horowitzmartha@gmail.com', 'Moab',
                                    '+1 555 034 9032' );  
                                    
insert into users values(35, 'Chantal', null , 'Chantal_Sands62@hotmail.com', 'Pitsburgh',
                                    '+1 555 432 1098' );                                     
                                    
  select * from users;       
  
  select first_name, last_name, city, user_id
  from users
  where city = 'Moab';
  
 select first_name, last_name, city, user_id
  from users
  where city = 'Moab' and last_name = 'Lin';
  
   select first_name, last_name, city, user_id
  from users
  where city = 'Moab' or last_name = 'Lin';
  
 select first_name, last_name, city, user_id
  from users
  where last_name != 'Lin';
  
 ************ #like , not like and in , not in operators*******************
  
 select first_name, last_name, city, user_id
 from users
 where first_name like 'C%'; 
 
  select first_name, last_name, city, user_id
 from users
 where first_name like 'c%';
 
  select first_name, last_name, city, user_id
 from users
 where first_name like 'c%a';
 
  select first_name, last_name, city, user_id
 from users
 where first_name like 'c%n%';
 
 select first_name, last_name, city, user_id
 from users
 where first_name like '%a';
 
  select first_name, last_name, city, user_id
 from users
 where first_name not like '%a';
 
  select first_name, last_name, city, user_id
 from users
 where city in ('Springfield', 'Pleaston', 'Savannah');
 
  select first_name, last_name, city, user_id
 from users
 where city not in ('Springfield', 'Pleaston', 'Savannah');
 
  select first_name, last_name, city, user_id
 from users
 where city not in ('Springfield', 'Pleaston', 'Savannah') and first_name like 'n%';
 
 
 
 
 ############SubQuery######################
 
 
 create table gold_users(uid int primary key,
						end_date date not null,
                        points float);
                        
show tables;

insert into gold_users values(10,'2020-11-01',342);
insert into gold_users values(11,'2019-10-03',241.2);
insert into gold_users values(15,'2019-12-01',93);
insert into gold_users values(19,'2023-01-13',13.8);

select * from gold_users;

select first_name, last_name, city,user_id
from users
where user_id in (select uid
				from gold_users);
                

select first_name, last_name, city,user_id
from users
where user_id in (select uid
				from gold_users
                where points > 200);
                
select first_name, last_name, city,user_id
from users
where user_id in (select uid
				from gold_users
                where end_date >= curdate());       
                