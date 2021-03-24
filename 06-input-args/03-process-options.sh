# 使用while+shift+case循环处理用户输入参数
# 处理 -x 的参数
while [ -n "$1" ]
do
	case "$1" in 
	-start) echo "start test.jar" ;;
	-stop)  echo "stop test.jar" ;;
	-info)  echo "info test.jar" ;;
	*)      echo "not support command $1 " ;;
	esac
	shift
done