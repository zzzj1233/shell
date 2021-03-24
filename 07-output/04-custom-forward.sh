# 1. shell可以使用0~8 9个重定向
# 2. 0~2已经被系统赋值
# 3. 3~8未定义,我们可以自行定义


exec 3>warn.log
exec 4>error.log

# 输出到warn.log
echo "log.warn('warn !')" >&3

# 输出到error.log
echo "log.error('error !!!')" >&4
