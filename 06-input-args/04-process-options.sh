# 处理 -c -s 的参数和 -- xxx yyy zzz的参数

# 支持 -start -stop -test
while [ -n "$1" ]
do
	case "$1" in
	"-c") echo "options xxx ~" ;;
	"-s") echo "start xxx" ;;
	"--")
		shift
		break
	;;
	esac
	shift
done

while [ -n "$1" ]
do
	echo "ext param : $1"
	shift
done

# ./test.sh  -c -s -- spring.profiles.active=dev hhhh heiheihei
# options xxx ~
# start xxx
# ext param : spring.profiles.active=dev
# ext param : hhhh
# ext param : heiheihei
