# 在本次shell执行的生命周期中,永久重定向

# 将stdout重定向到info.log
exec 1>info.log
# 将stderr重定向到error.log
exec 2>error.log

ls -l --color=auto .
ls -l --color=auto noExistsFile

# 将echo后面的字符串输出到stdout,由于stdout被重定向,所以讲被输出到info.lop
echo "end"

# 将echo后面的字符串输出到stderr,由于stderr被重定向,所以讲被输出到error.lop
echo "[ERROR] log.error(e)" >&2