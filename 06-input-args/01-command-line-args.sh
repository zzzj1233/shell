# 1. 获取命令行参数的个数
argv=$#


echo "argv = $argv"

# 2. basename是一个linux命令
# 如果shell以绝对路径执行 /usr/local/sh/test.sh , 那么会输出test.sh
echo "shell name = `basename $0`"

# 3. 命令行参数默认以逗号分割,如果想在字符串中有空格,则需要使用双引号输入参数

# ./test.sh "zzzj 1233 hhh" argv = 1

# ./test.sh zzzj 1233 hhh argv = 3


# 4. 使用$@也可以遍历所有参数
count=1
for arg in $@
do
	echo "$count : $arg"
	count=$[$count + 1]
done

# 5. 使用$*可以把所有参数当成一个完整的字符串
echo "\$* = $*"