stop_num=$1

if [ "$stop_num" == "" ]
then
    echo "请输入终止数"
    exit 1
elif [ "$stop_num" -ge 100 ] 
then
    echo "终止数必须小于100"
    exit 1
fi


for ((i = 0;;i++))
do
    if [ "$i" -ge "$stop_num" ]
    then
        break
        # break 默认就是break 1
        # 如果在嵌套循环想跳出外层循环
        # 则 break2
    fi
    echo "i = $i"
done