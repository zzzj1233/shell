# 1. mktemp 临时文件名.XXXXXXX
# 2. X最少一个,X代表一个随机字母 , (产生随机字母尽量避免生成同名文件)
# 3. 返回生成的文件名

# mktemp info.XXXXXX

# 我们可以使用shell执行该命令,获取生成的文件名,向该文件中写入内容

file_name=`mktemp info.XXXXX`
exec 3>"$file_name"

while [ -n "$1" ]
do
    echo "Log.Info($1)" >&3
    shift
done

# 1. ./test.sh 1 2 3

# 2. ll
# -rw------- 1 root root  36 Mar 24 23:21 info.tkdBd
# -rwxr--r-- 1 root root 406 Mar 24 23:21 test.sh

# 3. cat info.tkdBd
# Log.Info(1)
# Log.Info(2)
# Log.Info(3)