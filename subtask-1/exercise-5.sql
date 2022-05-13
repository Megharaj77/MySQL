create table user_summary as
select user_id, first_name,city
from user1;

show tables;

desc user_summary;

alter table user_summary
add primary key(user_id);

desc user_summary;

alter table user_summary
drop column city;

desc user_summary;

drop table user_summary;

show tables;

drop database firsat_database;


