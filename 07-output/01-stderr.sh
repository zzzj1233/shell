# 1. yyy < xxx 重定向stdio,将xxx的内容读取到yyy  (yyy本该从键盘输入读取数据)
# 2. yyy > xxx 重定向stdout,将yyy的内容输入到xxx (yyy本该向显示器输出)
# 3. yyy >> xxx 重定向stdout,将yyy的内容追加到xxx
# 4. yyy 2> xxx 重定向stderr,如果yyy命令参数产生一个错误的结果,那么输出到xxx

# 1. ok 可以将错误内容输出到error.log
ls -al --color=auto notExsitsFile 2> error.log

# 2. 失败 由于ls -al不会产生stderr输出,任会将stdout输出到屏幕,并且清空error.log
ls -al --color=auto test.sh 2> error.log

# 3. ok , &> 无论是stdout还是stderr,都可以重定向
ls -al --color=auto test.sh notExsitsFile &> error.log