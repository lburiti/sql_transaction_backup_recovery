select @@autocommit;

-- setar autocomit = off, ou false ou 0

set @@autocommit = 0;

start transaction;

	select @orderNumbers:= max(orderNumbers) + 1
    from orders;
    
    -- select @orderNumbers as Number;
    
    insert into orders values(@orderNumbers,'2005-05-01','2005-6-10','2005-05-11','EM PROGRESSO',1),
							 (@orderNumbers + 1,'2005-05-01','2005-6-10','2005-05-11','EM PROGRESSO',1);
-- rollback;                             
    insert into ordersDetails values(@orderNumbers, '18_1749', 30, '136.00'),
									(@orderNumbers, '18_2248', 50, '55.09');
                                    
commit;

-- transações sequenciais no mysql

/*Primeira transação*/
start transaction;
	select orderNumbers as ID, orderStatus as Status, productCode as Product, round(price * 0.10,2) as Send_value from orders natural join ordersDetails;
commit;

/*Segunda transação*/
start transaction;
	select orderNumbers as ID, orderStatus as Status, productCode as Product, round(price * 0.10) as Send_value from orders natural join ordersDetails;
    update orders set orderStatus = 'ENTREGUE' where orderNumbers = 2;
rollback;
commit;

set @@autocommit = 0;
select @@autocommit;

show session variables like '%isolation%';

-- set session transaction isolation level read committed;
set session transaction isolation level repeatable read;

