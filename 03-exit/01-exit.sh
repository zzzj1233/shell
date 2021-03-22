# linux有一个内置变量$?,可以查看上个命令的退出状态码

# echo $?

# 自定义程序可以使用exit退出并且返回指定状态码,默认返回0
# 状态码可以用于if判断

# 常用状态码

# 0 ok
# 1 一般性未知错误

if grep zzzj /etc/passwd
then
    exit 0
else
    exit 1
fi