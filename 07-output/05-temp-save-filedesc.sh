# 临时保存stdout,并且将stdout重定向到info.log

# 恢复stdou,向屏幕输出

exec 3>&1
exec 1>info.log

echo "line 1 ~"
echo "line 2 ~"

exec 1>&3

echo "now , exchange end "

echo "cat info.log"
echo

cat "info.log"