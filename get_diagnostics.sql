use transactionexample;

delimiter //
create procedure sql_fail_v2()
	begin
		declare exit handler for sqlexception
        begin
			get diagnostics condition 1
				@p2 = message_text;
			select @p2 as Transaction_error;
            rollback;
        end;
        
        start transaction;
			insert into orders values(10,'2005-05-01','2005-6-10','2005-05-11','EM PROGRESSO',1),
								 (11,'2005-05-01','2005-6-10','2005-05-11','EM PROGRESSO',1);
			insert into ordersDetails values(10, '18_1849', 30, '189.50'),
										(10, '18_2569', 50, '105.09');
		commit;
        
	end //
delimiter ;

call sql_fail_v2();

select * from orders where orderNumbers = 10;