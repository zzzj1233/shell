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


# 伪代码
# 1. 替换一个字符
sed 's/function/func/' $current_file

# func sum() ... func sub()...

# 2. 替换多个字符,使用分号隔开
sed 's/function/func/; s/echo/print/' $current_file

# func sum() { print $[$1 + $2] }  func sub() { print $[$1 - $2] } ...

# 3. 从sed文件中读取内容,进行替换
touch go.sed

# 不需要使用引号和分号分割,换行即可
s/function/fun
s/echo/fmt.Println

sed -f go.sed $current_file


