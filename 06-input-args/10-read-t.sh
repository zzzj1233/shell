# 默认read会一直阻塞直到用户输入

# 使用 read -t second 命令可以指定超时时间,如果超过指定时间还没有输入

# 那么read命令返回-1


# 2s超时
if read -t 2 -p "input you password : " pwd
then
    echo "you password is $pwd"
else
    echo
    echo "don't worry,it's very safely"
fi
