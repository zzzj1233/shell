echo "read one var"
echo -n "input you name : " 
read name
echo "hello ~ $name"
echo

echo "read two var"

# read一次性读取两个参数
echo -n "input you age and hobby , use space to separate : " 
read age hobby
echo "$name , you age is $age , hobby is $hobby"
echo

# 使用$REPLY获取全部输入参数\
echo "read any var"
read
echo "rest var = $REPLY"
