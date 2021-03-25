# 默认在shell中定义的变量就是全局变量
num=1


function test() {
    echo "test : before reassign , num = $num"
    # 函数中修改变量会影响到全局变量
    num=1233
}


test
echo "after call test(), num = $num"

# test : before reassign , num = 1
# after call test(), num = 1233
