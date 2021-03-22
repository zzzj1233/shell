# 语法

# if command
# then
#    xxx
# fi

# shell if的command只能是一个命令,只有当command的退出状态码返回0时,才执行if代码块的语句


if pwd
then
    echo "pwd can work"
else
    echo "pwd can not work"
fi