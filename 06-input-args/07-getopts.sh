# 需求
# ./test.sh -b -h 123 zzzj 1233
# 获取zzzj,1233

# 目标
# 使用 $OPTIND 内置参数,获取剩余参数


while getopts bh: opt
do
	case "$opt" in
	b) echo "run background" ;;
	h) echo "host = $OPTARG" ;;
	esac
done

# 移动已经解析过的参数
echo "argv = $# , optind = $OPTIND"

# ./test.sh -b -h 123
# argv = 3 , optind = 4

# ./test.sh -b
# argv = 1 , optind = 2

shift $[ $OPTIND - 1 ]


for arg in $*
do
	echo "rest param : $arg"
done

# ./test.sh -b -h 1 zzzj 1233
# run background
# host = 1
# argv = 5 , optind = 4
# rest param : zzzj
# rest param : 1233