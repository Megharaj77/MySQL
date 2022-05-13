describe user1;

alter table user1
modify column email_id varchar(255) unique;

describe user1;

insert into user1 values(33, 'Chen', 'Lin', 'Marcia_Lin89@hotmail.com', 'Moab',
                                    '+1 555 111 0357' ); 
                                    
insert into user1 values(33, 'Chen', 'Lin', 'Chen.LinUK@gmail.com', 'Moab',
                                    '+1 555 111 0357' );                                     
 select * from user1;                     
 
 insert into user1 values(34, 'Charles', 'Lin', 'chlin@qenel.com', 'Moab',
                                    '+1 555 111 0357' );
 select * from user1;                         
 
 alter table user1
 modify column phone varchar(255) unique;
 
 select * from user1;  
 
 delete from user1
 where user_id=34;
 
 alter table user1
 modify column phone varchar(255) unique;
 
 desc user1;
 
 insert into user1 values(34, 'Charles', 'Lin', 'chlin@qenel.com', 'Moab',
                                    '+1 555 111 0357' );