use transactionexample;

drop procedure sql_fail;
delimiter //
create procedure sql_fail()
	begin
		declare exit handler for sqlexception
        begin
			show errors limit 1;
			rollback;
			-- select 'A transação for encerrada devido algum erro ocorrido!' as Warning;
            
        end;
        
        start transaction;
        
        -- select
			-- @nextorder := max(orderNumbers) + 1 as Next_number
		-- from
			-- orders;
        
			insert into orders values(10,'2005-05-01','2005-6-10','2005-05-11','EM PROGRESSO',1),
								 (11,'2005-05-01','2005-6-10','2005-05-11','EM PROGRESSO',1);
			insert into ordersDetails values(10, '18_1849', 30, '189.50'),
										(10, '18_2569', 50, '105.09');
                                        
			commit;
        
	end //
delimiter ;

call sql_fail();

select * from orders where orderNumbers = 10;