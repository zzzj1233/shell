# 处理 -P port -h host -u root -p 的参数

port=6379
host=localhost
user=root

while [ -n "$1" ]
do
	case "$1" in
	-P ) 
		shift
		port="$1"
	;;
	-h ) 
		shift
		host="$1"
	;;
	-u ) 
		shift
		user="$1"
	;;
	-p );;
	*) echo "unknown arg $1";;
	esac
	shift
done

echo "port = $port , host = $host , user = $user"

# ./test.sh  -u dl -P 6788 -h 127.0.0.1
# port = 6788 , host = 127.0.0.1 , user = dl