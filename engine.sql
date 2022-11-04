show databases;
use transactionexample;
show tables;

create table engine_ex(
	id int primary key
)engine = MEMORY;

show engine MEMORY status;

use information_schema;

show tables;

select * from tables where table_schema = 'transactionexample';