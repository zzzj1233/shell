# while后面可以跟着多个命令
# while只会判断最后一条命令是否为0

i=0

# 先执行echo,再判断是否 <= 10
while 
	echo "$i"
	[ "$i" -ne 10 ]
do
	i=$["$i" + 1 ]
done
