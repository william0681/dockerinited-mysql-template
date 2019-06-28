# dockerinited-mysql-template
在Docker定制镜像初始化mysql时区、导入sql文件、设定root密码、启动远程连接

运行方式 
1.将主机上导出的sql文件的内容复制到mysql_data/data.sql中（直接覆盖）
2.修改passwd.txt中的内容为你需要设定的密码
3.cd进项目根目录
4.docker build -t xxx:xxx .
5.docker run -d -p 3306:3306 xxx:xxx

注意：
不要修改文件的目录
若是容器出错，请使用docker logs <container id>
已默认开启事务，修改时区为+8:00
若是需要对服务器的修改，可以在init.sql中进行添加
