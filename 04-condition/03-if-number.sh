# 使用 if test 可以代替使用命令行 , test支持 1. 数值比较 2. 字符串比较 3. 文件比较

num1=$1
num2=$2

# 注意!
# 1. 中括号的左右两侧必须都有一个空格
# 2. 无法对浮点数进行比较
if [ $num1 -eq $num2 ]; then
  echo "$num1 == $num2"
fi
if [ $num1 -lt $num2 ]; then
  echo "$num1 < $num2"
fi
if [ $num1 -le $num2 ]; then
  echo "$num1 <= $num2"
fi
if [ $num1 -gt $num2 ]; then
  echo "$num1 > $num2"
fi
if [ $num1 -ge $num2 ]; then
  echo "$num1 >= $num2"
fi
if [ $num1 -ne $num2 ]; then
  echo "$num1 != $num2"
fi
