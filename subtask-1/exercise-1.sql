create table users(user_id int not null unique,
                   first_name varchar(255) not null,
                   last_name varchar(255),
                   email_id varchar(255),
                   city varchar(255),
                   phone varchar(255) not null);
                   
                   describe users;
                   
                   
       
       insert into users values(10, 'Claudia', 'Sand', 'Claudia.Sand@hotmail.com', 'Hanover', 
                                  '+1 555 234 5678');
						
	insert into users values(20, 'Julio', 'Chavez', 'chavezj317@gmail.com', 'Savannah',
                                     '+1 555 890 9898');
                                     
     insert into users values(30, 'Neil', 'Parks', 'neil_parks82@hotmail.com', 'Pleasnton',
                                     '+1 555 567 3456');  
                                     
                                     
	select * from users;
    
    
       insert into users values(30, 'Neil', 'Parks', 'neil_parks82@hotmail.com', 'Pleasnton',
                                     '+1 555 567 3456');  
                   
       insert into users values(30, 'Gina', 'Ortiz', 'gina_ortiza@hotmail.com', 'Hempstead',
                                     '+1 555 963 8521');               
                                     
       insert into users values(19, 'Gina', 'Ortiz', 'gina_ortiza@hotmail.com', 'Hempstead',
                                     '+1 555 963 8521');    
                                     
        insert into users values(11, Null, 'Chawanda', 'raj_chawanda@hotmail.com', 'Springfield',
                                     '+1 555 211 2563');      
                                     
        insert into users values(11, 'Raj', 'Chawanda', 'raj_chawanda@hotmail.com', 'Springfield',
                                     Null);      
                                     
        insert into users values(null, 'Raj', 'Chawanda', 'raj_chawanda@hotmail.com', 'Springfield',
                                    '+1 555 211 2563' );   
                                    
        insert into users values(11, 'Raj', 'Chawanda', 'raj_chawanda@hotmail.com', 'Springfield',
                                    '+1 555 211 2563' );      
                                    
         insert into users values(31, 'Marcia', null, null, 'Springfield',
                                    '+1 555 234 8765' );  
                                    
		select * from users