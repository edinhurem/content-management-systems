DROP DATABASE IF EXISTS classlist_db;
CREATE DATABASE classlist_db;

USE classlist_db;

create table department(
    id int AUTO_INCREMENT primary key,
    name varchar(30) not null
);

create table role(
    id int  AUTO_INCREMENT primary key,
    title varchar(30) not null,
    salary decimal(10, 2), 
    department_id int,
    foreign key(department_id) references department(id)
);

create table employee(
    id int  AUTO_INCREMENT primary key,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    role_id int,
    manager_id INTEGER,
     CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);