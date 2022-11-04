-- tabela utilizada no exemplo de transações
-- DROP database transactionExample;
CREATE DATABASE transactionExample;

USE transactionExample;
-- DROP TABLE orders;

CREATE TABLE orders(
	orderNumbers INT,
    orderDate date,
    requiredDate date,
    shippedDate date,
    orderStatus ENUM('DESPACHADO','EM PROGRESSO','ENTREGUE'),
    customerNumber int,
    CONSTRAINT pk_orders PRIMARY KEY (orderNumbers) 
);

DESC orders;

CREATE TABLE ordersDetails(
	orderNumbers int auto_increment,
    productCode varchar(255),
    quantityOrder int,
    price varchar(255),
	constraint fk_orderdetails foreign key (orderNumbers) references orders(orderNumbers),
    constraint pk_orderdatails primary key (orderNumbers, productCode)
);

DESC ordersDetails;

SELECT * FROM ordersDetails;
SELECT * FROM orders;

select * from orders join ordersDetails using(orderNumbers);

set @@autocommit = 1;

insert into orders values(1,'2005-05-01','2005-6-10','2005-05-11','EM PROGRESSO',1);

select * from orders where orderNumbers = 2;

