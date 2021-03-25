# 函数返回数组

function test() {
    local arr=[1,2,3,4,5]
    echo "${arr[@]}"
}

my_arr=`test`

echo "my_arr = ${my_arr[@]}"