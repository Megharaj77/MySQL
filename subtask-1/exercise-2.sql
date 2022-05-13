

create table user1(user_id int,
                   first_name varchar(255) not null,
                   last_name varchar(255),
                   email_id varchar(255),
                   city varchar(255),
                   phone varchar(255) not null,
                   primary key(user_id));
				
    describe user1;      
    
    insert into user1 values(10, 'Claudia', 'Sand', 'Claudia.Sand@hotmail.com', 'Hanover', 
                                  '+1 555 234 5678');
						
	insert into user1 values(20, 'Julio', 'Chavez', 'chavezj317@gmail.com', 'Savannah',
                                     '+1 555 890 9898');
                                     
     insert into user1 values(15, 'Neil', 'Parks', 'neil_parks82@hotmail.com', 'Pleasnton',
                                     '+1 555 567 3456');  
                      
       insert into user1 values(20, 'Gina', 'Ortiz', 'gina_ortiza@hotmail.com', 'Hempstead',
                                     '+1 555 963 8521');
                                     
     select * from user1;
     
    
     insert into user1 values(19, 'Gina', 'Ortiz', 'gina_ortiza@hotmail.com', 'Hempstead',
                                     '+1 555 963 8521');
                                     
      insert into user1 values(11, 'Raj', 'Chawanda', 'raj_chawanda@hotmail.com', 'Springfield',
                                    '+1 555 211 2563' );      
                                    
	 insert into user1 values(31, 'Marcia', 'Lin', 'Marcia_Lin89@hotmail.com', 'Springfield',
                                    '+1 555 234 8765' );   
                                    
	select last_name,city,phone
    from user1;
    
    select first_name, email_id,phone
    from user1;
    
    select user_id,first_name,last_name,city
    from user1
    where city='Springfield';
    
    select user_id,first_name,last_name
    from user1
    where city='Springfield';
    
    select *
    from user1
    where city='Springfield';
    
    select *
    from user1
    where city='Calgary';
    