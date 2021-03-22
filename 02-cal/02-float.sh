# linux可以使用bs访问bash计算器,bash计算器支持浮点运算

# bc

# 保留4位小数
# scale=4

# 55/22

# 11.11*22.22

# 在shell中使用bc的语法 var=$(echo "options; expression" | bc) 或 var=`echo "options; expression" | bc`

num1=`echo "scale=4;10/4" | bc`

echo "num1 = $num1"

num2=100
num3=3

ret=`echo "scale=4;$num2/$num3" | bc`
echo "$num2 / $num3 =  $ret"