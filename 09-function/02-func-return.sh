# 获取函数的返回值
# 返回值必须在内0~255,例如256,则返回0

# 默认情况下,函数会返回最后一条执行命令的返回值
function func1() {
    pwd
}

func1

# 执行函数后,使用$?获取函数返回值
echo "func1 -> $?"

function func2() {
    return 123
}

func2
echo "func2 -> $?"

function func3() {
    return 256
}

func3
echo "func3 -> $?"