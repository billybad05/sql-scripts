alter table students 
    add SSN varchar(9);

update students set
    SSN = '123456789';

Alter table students 
    alter column ssn varchar(11) not null;
