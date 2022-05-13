show create table user1;

drop index phone on user1;

desc user1;

show create table user1;

select * from user1;

insert into user1 values(34, 'Charles', 'Lin', 'chlin@qenel.com', 'Moab',
                                    '+1 555 111 0357' );
                                    
update user1
set phone='+1 555 111 9999'
where user_id=34;

select * from user1;

update user1
set email = 'Gina@qenel.com'
where first_name = 'Gina';

update user1
set phone = '+1 555 112 6456';