	

CREATE TABLE Department(
depName varchar(30),
dep_Id int primary key,
);

CREATE TABLE Manager  (
  Manager_Id INT PRIMARY KEY,
  Name VARCHAR(50),
  dep_Id int ,
  FOREIGN KEY (dep_Id) REFERENCES Department(dep_Id)

);




CREATE TABLE Employee (
    NationalId INT PRIMARY KEY,
	Manager_Id INT ,
    Name VARCHAR(50),
    Birthdates DATE,
	email varchar(50),
    Phone_Numbers VARCHAR(20), 
    Nationalities VARCHAR(50),
    MaritalStatus VARCHAR(20),
    PersonalPhoto varchar(max),
    EntryDate DATE,
    Password VARCHAR(50),
    Department VARCHAR(50) ,
	dep_Id int ,
	FOREIGN KEY (dep_Id) REFERENCES Department(dep_Id),
	FOREIGN KEY (Manager_Id) REFERENCES Manager(Manager_Id)

);

CREATE TABLE Task(
tasks_title varchar(15),
start_date Date,
due Date,
task_description varchar(max),
tasks_level varchar(20),
AssignedToEmployeeId INT,
FOREIGN KEY (AssignedToEmployeeId) REFERENCES Employee(NationalId),

);

CREATE TABLE Contact_Us(
feedback varchar(max) Not null,
email varchar(50),

);