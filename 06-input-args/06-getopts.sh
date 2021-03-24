# getopts语法

# getopts ab:c var 输入参考 : ./test.sh -a -b bbb -c

# a前面多一个冒号表示输入 abc以外的参数也不会报错
# getopts :ab:c var 输入参考 : ./test.sh -a -b bbb -c


# b : back
# h : host
# $OPTARG是关键字,用于获取-h后面的参数

while getopts bh: opt
do	
	# 注意,此时的opt已经被去掉了-
	case "$opt" in
	b) echo "in background" ;;
	h) echo "host = $OPTARG" ;;
	esac
done


# 示例1
# ./test.sh -bh 127.0.0.1
# in background
# host = 127.0.0.1

# 示例2
# ./test.sh -f
# ./test.sh: illegal option -- f