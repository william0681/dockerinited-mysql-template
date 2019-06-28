set global time_zone="+8:00";
set global event_scheduler=on;

use mysql;
update mysql.user set authentication_string=password('?') where user='root' and host='localhost'; 
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '?' WITH GRANT OPTION;
flush privileges;
