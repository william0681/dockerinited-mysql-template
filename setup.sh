#/bin/bash

set -e

echo '启动mysql服务'
service mysql start
echo `service mysql status`

echo '导入数据'
mysql < /mysql/mysql_data/data.sql
echo '导入完毕'

echo '设置脚本密码'
pass=`cat /mysql/passwd.txt`
sed -i "s/?/$pass/g" /mysql/init.sql
echo '替换成功'

echo 'Mysql初始化'
mysql < /mysql/init.sql
echo '初始化完毕'

tail -f /dev/null
