select * from Students

update students SET
    phone = (select phone from students where firstname = 'karl')
    where firstname = 'Ian';