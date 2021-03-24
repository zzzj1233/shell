# 假设有三个命令行参数 $1 $2 $3

# 1. 使用第一次shift后 $1 = $2, $2 = $3 , 原$1已消失,无法回溯

# 2. 使用第二次shift后 $1 = $3 , 原$1和$2已消失,无法回溯

# 3. 借用这个特性可以很方便地遍历参数

count=1
until [ -z "$1" ]
do
	echo "$count : $1"
	count=$[ $count + 1 ]
	# shift == shift1 , 如果想要左移两个参数, 则shift2
	shift
done
