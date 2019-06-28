FROM mysql:5.7

#免密登录
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

COPY passwd.txt /mysql/passwd.txt
COPY setup.sh /mysql/setup.sh
COPY /mysql_data /mysql/mysql_data
COPY init.sql /mysql/init.sql

CMD ["sh","/mysql/setup.sh"]
