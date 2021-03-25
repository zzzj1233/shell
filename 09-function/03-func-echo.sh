# return获取返回值的值范围太局限,所以一般以执行命令的形式,获取函数的返回值


function sum() {
    echo $[$1 + $2]
}

function sub() {
    echo $[$1 - $2]
}

function mul() {
    echo $[$1 * $2]
}

function div() {
    echo $[$1 / $2]
}

if [ "$#" -lt 2 ]; then
    echo "至少提供两个数组作为运算"
    exit
fi

num1="$1"
num2="$2"

# 注意!
# 调用函数时,函数无法直接使用到命令行参数$1,$2
# 必须当做参数传递给函数,函数才能读取到
sum_ret=`sum $num1 $num2`
sub_ret=`sub $num1 $num2`

echo "sum = $sum_ret"
echo "sub = $sub_ret"

echo "mul = `mul $num1 $num2`"
echo "div = `div $num1 $num2`"

