create database BidvestBank;
use BidvestBank;

create table BankBranch(
branch_name varchar(30) not null unique,
branch_city varchar(30) not null,
assets int,
primary key(branch_name, branch_city)
);

create table CustomerAccount(
account_number char(6) not null primary key,
branch_name varchar(20),
balance double
);

create table Customer(
account_number char(6) not null unique,
customer_name varchar(30) not null,
customer_street varchar(30),
customer_city varchar(30),
primary key(account_number),
foreign key(account_number) references CustomerAccount(account_number)
);

create table Loan(
loan_number varchar(4) not null primary key,
branch_name varchar(30),
amount double
);

create table Depositor(
deposit_id int auto_increment not null unique,
customer_name varchar(30) not null,
account_number char(6) not null,
foreign key(account_number) references CustomerAccount(account_number),
primary key(deposit_id)
);
alter table Depositor auto_increment=100;

create table Borrower(
customer_name varchar(30) not null,
loan_number varchar(4) not null,
foreign key(loan_number) references Loan(loan_number),
primary key(loan_number)
);

create table Employee(
employee_name varchar(30) not null,
branch_name varchar(30),
salary double
);


insert into CustomerAccount  values('A-5324','Newtown',500);
insert into CustomerAccount  values('A-5624','Sunnyside',400);
insert into CustomerAccount  values('A-7794','Midrand',900);
insert into CustomerAccount values('A-4467','Mabopane',700);
insert into CustomerAccount values('A-3546','Midrand',750);
insert into CustomerAccount values('A-3453','Universitas',700);
insert into CustomerAccount values('A-2542','Mamelodi',350);

insert into BankBranch(branch_name, branch_city, assets) values('Midrand','Johannesburg',7100000);
insert into BankBranch(branch_name, branch_city, assets) values('Newtown','Johannesburg',9000000);
insert into BankBranch(branch_name, branch_city, assets) values('Mabopane','Pretoria',400000);
insert into BankBranch(branch_name, branch_city, assets) values('Belgravia','Kimberly',3700000);
insert into BankBranch(branch_name, branch_city, assets) values('Sunnyside','Pretoria',1700000);
insert into BankBranch(branch_name, branch_city, assets) values('Amanzimtoti','Durban',3000000);
insert into BankBranch(branch_name, branch_city, assets) values('Universitas','Bloemfontein',2100000);
insert into BankBranch(branch_name, branch_city, assets) values('Mamelodi','Pretoria',8000000);

insert into Customer(account_number,customer_name, customer_street, customer_city) values('A-5324','Modise','Spring','George');
insert into Customer(account_number,customer_name, customer_street, customer_city) values('A-7794', 'Brooks','Sentor','Johannesburg');
insert into Customer(account_number,customer_name, customer_street, customer_city) values('A-3453','Jooste','North','Kimberly');
insert into Customer(account_number,customer_name, customer_street, customer_city) values('A-2542','Lombard','Sand Hill','Nelspruit');
insert into Customer(account_number,customer_name, customer_street, customer_city) values('A-4467', 'Mokwena','Walnut','Port-Elizabeth');
insert into Customer(account_number,customer_name, customer_street, customer_city) values('A-3546','Johnson','Mmabatho','Mafikeng');
insert into Customer(account_number,customer_name, customer_street, customer_city) values('A-5624','Johnson','Alma','BloemFontein');

insert into Depositor(customer_name, account_number) values('Johnson','A-5624');
insert into Depositor(customer_name, account_number) values('Johnson','A-5624');
insert into Depositor(customer_name, account_number) values('Johnson','A-7794');
insert into Depositor(customer_name, account_number) values('Zwane','A-3546');
insert into Depositor(customer_name, account_number) values('Lindsay','A-3453');
insert into Depositor(customer_name, account_number) values('Smith','A-4467');
insert into Depositor(customer_name, account_number) values('Dlamini','A-2542');

insert into Loan(loan_number, branch_name, amount) values('L-11','Mamelodi',900);
insert into Loan(loan_number, branch_name, amount) values ('L-14','Newtown',1500) ;
insert into Loan(loan_number, branch_name, amount) values ('L-15','Sunnyside',1500) ;
insert into Loan(loan_number, branch_name, amount) values ('L-16','Sunnyside',1300);
insert into Loan(loan_number, branch_name, amount) values ('L-17','Newtown',1000);
insert into Loan(loan_number, branch_name, amount) values ('L-23','Universitas',2000);
insert into Loan(loan_number, branch_name, amount) values ('L-93','Mabopane',500);

insert into Borrower(customer_name, loan_number) values ('Jooste','L-93' );
insert into Borrower(customer_name, loan_number) values ('Johnson','L-15');
insert into Borrower(customer_name, loan_number) values('Jackson','L-14');
insert into Borrower(customer_name, loan_number) values ('Zwane','L-17');
insert into Borrower(customer_name, loan_number) values ('Smith','L-11');
insert into Borrower(customer_name, loan_number) values ('Smith','L-23');
insert into Borrower(customer_name, loan_number) values('Williams','L-17');

insert into Employee(employee_name, branch_name, salary) values ('Modise','Sunnyside',1500);
insert into Employee(employee_name, branch_name, salary) values('Brown','Sunnyside',1300) ;
insert into Employee(employee_name, branch_name, salary) values('Gopal','Sunnyside',5300);
insert into Employee(employee_name, branch_name, salary) values('Johnson','Newtown',1500) ;
insert into Employee(employee_name, branch_name, salary) values ('Loreena','Newtown',1300) ;
insert into Employee(employee_name, branch_name, salary) values ('Peterson','Newtown',2500);
insert into Employee(employee_name, branch_name, salary) values ('Rao','Austin', 1500);
insert into Employee(employee_name, branch_name, salary) values ('Sato','Austin', 1600);


select * from CustomerAccount where balance <700;

select * from Customers where customer_city = "Johannesburg";
show Customers;

select * from Employees where salary >1500 and bank_branch != 'Newtown';
show Employees;

Select salary from Employees avg(salary);
show Employees;

Select branch_name from BankBranch where largest(assest)
show BankBranch;

Select 


show Table borrower;
