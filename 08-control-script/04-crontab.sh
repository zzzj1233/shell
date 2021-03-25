# crontab是linux的命令,给予一个cron表达式,根据表达式在指定的时间执行command

# 常用参数 -e 进入类vim编辑模式

# crontab -e

# -- 此时已进入vim编辑模式  --

# * * * * * sh /usr/local/sh/test.sh 
# :wq

# -- 退出vim编辑模式  --

# /usr/local/sh/test.sh 将会每分钟执行一次

# 列出当前用户crontab执行的命令

# crontab -l 
# * * * * * sh /usr/local/sh/test.sh

# 删除当前用户crontab的命令

# crontab -r