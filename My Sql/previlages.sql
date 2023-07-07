CREATE USER 'devuser'@'localhost'
IDENTIFIED BY 'devuser';

grant create, alter, drop
on demo.*
to 'devuser'@'localhost';

grant select, insert, update, delete
on demo.*
to 'devuser'@'localhost';