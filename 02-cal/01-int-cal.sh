# 直接使用数字相乘
echo "11 * 22 * 33 = $[11*22*33]"

# 使用数字和变量相乘
num1=55
echo "echo 11 * 55 = $[11*$num1]"

# 使用变量和变量相乘
num2=2
echo "55 * 2 = $[$num1*$num2]"

# 在shell中,只支持整除

echo "55 / 2 = $[$num1/$num2]"