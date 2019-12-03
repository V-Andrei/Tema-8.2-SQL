--Ex1: Creati baza de date.
create database StoreManagement

--Ex2: Creati scripturile pentru tabele necesare si legaturile dintre ele. 
create table Customer
(
	Id int Primary key,
	Nume varchar(25) not null,
	Email varchar (50) not null
)
create table Employee
(
	Id int Primary key,
	Nume varchar(25) not null,
	Email varchar(50) not null
)
create table Category
(
	Id int Primary key,
	Nume varchar(25) not null,
	EmployeeId int Foreign key (EmployeeId) references Employee(Id)
)
create table Product
(
	Id int Primary key,
	Nume varchar(50) not null,
	CategoryId int Foreign key (CategoryId) references Category(Id),
	[Description] varchar(200),
	Price money not null
)
create table [Order]
(
	Id int Primary key,
	Numar int not null,
	[Data] date not null,
	CustomerId int Foreign key(CustomerId) references Customer(Id),
	[Status] varchar(50) not null,
	Constraint TotalPrice
		Check([Status] = 'Approved')
)
create table OrderProduct
(
	OrderId int Foreign key (OrderId) references [Order](Id),
	ProductId int Foreign key (ProductId) references Product(Id),
	NumberOfProducts int,
	Primary key (OrderId, ProductId)
)
-- Ex3: Creati diagrama bazei de date. 
-- E un alt fisier: Diagram_store 


insert into dbo.Employee
	([Id],[Nume],[Email])
	values (1,'Mircea','mircea@yahoo.com')
insert into dbo.Employee
	([Id],[Nume],[Email])
	values (2,'Elena' , 'elena@yahoo.com')
insert into dbo.Employee
	([Id],[Nume],[Email])
	values (3,'Cornel' , 'cornel@wantsome.com')
	
insert into dbo.Customer
	([Id],[Nume],[Email])
	values(1,'Paul','paul@gmail.com')
insert into dbo.Customer
	([Id],[Nume],[Email])
	values(2,'Dan','dan@wantsome.com')
insert into dbo.Customer
	([Id],[Nume],[Email])
	values(3,'Ionel','ionel@gmail.com')
insert into dbo.Customer
	([Id],[Nume],[Email])
	values(4,'Mircea','mircea@outlook.com')
insert into dbo.Customer
	([Id],[Nume],[Email])
	values(5,'Alina','alina@wantsome.com')
insert into dbo.Customer
	([Id],[Nume],[Email])
	values(6,'Ioana','ioana@outlook.com')
insert into dbo.Customer
	([Id],[Nume],[Email])
	values(7,'Gigel','gigel@gmail.com')
insert into dbo.Customer
	([Id],[Nume],[Email])
	values(8,'Serban','serban@yahoo.com')
insert into dbo.Customer
	([Id],[Nume],[Email])
	values(9,'Maria','maria@wantsome.com')
insert into dbo.Customer
	([Id],[Nume],[Email])
	values(10,'Marian','marian@yahoo.com')

insert into dbo.Category
	([Id],[Nume],[EmployeeId])
	values (1,'Electrocasnice',1)
insert into dbo.Category
	([Id],[Nume],[EmployeeId])
	values (2,'Electice',2)
insert into dbo.Category
	([Id],[Nume],[EmployeeId])
	values (3,'Sanitare',3)
insert into dbo.Category
	([Id],[Nume],[EmployeeId])
	values (4,'Gradina',1)
insert into dbo.Category
	([Id],[Nume],[EmployeeId])
	values (5,'Showroom',2)


insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (1,'Televizor','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',399,1)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (2,'Masina de spalat rufe','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut',478,1)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (3,'Frigider','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut',959,1)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (4,'Combina','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut',789,1)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (5,'Aragaz electric','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut',606,1)

insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (6,'Priza','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',39,2)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (7,'Tablou electric','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',66,2)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (8,'Lustra','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',359,2)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (9,'Prelungitor','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',60,2)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (10,'Paratrasnet','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',125,2)
	
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (11,'Vas wc','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',239,3)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (12,'Lavoar','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',116,3)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (13,'Baterie bucatarie','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',220,3)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (14,'Cada','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',1499,3)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (15,'Para dus','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',223,3)

insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (16,'Lopata','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',84,4)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (17,'Motocositoare','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',4755,4)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (18,'Brad','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',260,4)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (19,'Leagan','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',870,4)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (20,'Gretar','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',466,4)

insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (21,'Cutie Gresie','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',244,5)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (22,'Cutie Faianta','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',166,5)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (23,'Adeziv','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',90,5)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (24,'Chit faianta','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',87,5)
insert into dbo.Product
	([Id],[Nume],[Description],[Price],[CategoryId])
	values (25,'Distantiere','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.',6,5)

insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (1,1,'1.2.2019', 070000000, 'Approved')
insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (2,1,'3.2.2019', 070000000, 'Approved')
insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (3,1,'5.4.2019', 070000000, 'Approved')
insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (4,1,'4.5.2019', 070000000, 'Approved')
insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (5,1,'11.12.2019', 070000000, 'Approved')
insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (6,1,'1.8.2019', 070000000, 'Approved')
insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (7,1,'1.7.2019', 070000000, 'Approved')
insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (8,1,'8.18.2019', 070000000, 'Approved')
insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (9,1,'4.7.2019', 070000000, 'Approved')
insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (10,1,'3.12.2019', 070000000, 'Approved')

insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (11,2,'2.4.2019', 070000000, 'Approved')
insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (12,2,'2.3.2019', 070000000, 'Approved')

insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (13,4,'1.4.2019', 070000000, 'Approved')
insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (14,5,'1.3.2019', 070000000, 'Approved')

insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (15,6,'5.2.2019', 070000000, 'Approved')
insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (16,6,'6.9.2019', 070000000, 'Approved')

insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (17,7,'1.9.2019', 070000000, 'Approved')
insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (18,7,'3.9.2019', 070000000, 'Approved')

insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (19,8,'1.2.2019', 070000000, 'Approved')

insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (20,9,'1.4.2019', 070000000, 'Approved')

insert into dbo.[Order]
	([Id],[CustomerId],[Data],[Numar],[Status])
	values (21,10,'1.12.2019', 070000000, 'Approved')

insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(1,21,10)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(2,25,5)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(3,9,5)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(4,17,3)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(5,16,1)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(6,10,4)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(7,9,2)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(8,1,6)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(9,8,8)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(10,11,1)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(11,19,1)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(12,18,10)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(13,22,4)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(14,16,4)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(15,2,1)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(16,1,1)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(17,2,1)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(18,18,2)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(19,14,3)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(20,6,1)
insert into dbo.OrderProduct
	([OrderId],[ProductId],[NumberOfProducts])
	values(21,5,1)


-- Ex4: Afisati toate produsele.
select * from dbo.Product

-- Ex5: Afisati toti clientii care au in continutul email-ului @wantsome.com.
select * from dbo.[Customer]
where [Email] like '%@wantsome.com'

--Ex6: Afisati suma preturilor pentru fiecare categorie in parte.
select Sum (Price) from dbo.Product
where CategoryId = 1

select Sum (Price) from dbo.Product
where CategoryId = 2

select Sum (Price) from dbo.Product
where CategoryId = 3

select Sum (Price) from dbo.Product
where CategoryId = 4

select Sum (Price) from dbo.Product
where CategoryId = 5

--Ex7: Afisati clientii care au mai mult de 10 comenzi.
select CustomerId from dbo.[Order]
group by CustomerId 
having count(CustomerId) > 10

--Ex8: Creati un view care va afisa toti clientii si produsele comandate de acestia.
