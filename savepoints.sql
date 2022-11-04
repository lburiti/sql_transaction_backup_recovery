USE transactionExample;

select @@autocommit;
select @@transaction_isolation;
set session transaction isolation level read committed;
start transaction;

select
	@nextorder := max(orderNumbers) + 1 as Next_mumber
from
	orders;

insert into
	orders
    values(@nextorder,
			'2005-05-31',
			'2005-6-10',
             '2005-06-11',
             'Despachado',
             2);
             
	select orderNumbers from orders;
	savepoint insercao_order;
    
-- nova inserção em ordersDetails

insert into ordersDetails values(@nextorder + 1, 181749, 30, '136'),
								(@nextorder, 182248, 50, '55.09');

-- rollback;
savepoint insercao_order_details;

rollback to savepoint insercao_order;

commit;