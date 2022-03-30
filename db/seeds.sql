insert into department( name)
values("store_dept"),
("IT_dept");

insert into role( title, salary, department_id )
values("Accountant", 80000.50, 1),
("Manager", 90000.20, 2);

insert into employee( first_name, last_name, role_id, manager_id)
values ("Doe", "Jon", 1, 1),
 ("James", "Something",2, 1);


