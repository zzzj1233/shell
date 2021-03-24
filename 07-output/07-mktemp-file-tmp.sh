# mktemp -t  : -t选项会强制在tmp目录下创建临时文件,该命令将会返回临时文件的全路径


file_name=`mktemp -t test.XXXXXXXX`

echo "file_name = $file_name"

echo "first_line ~" > "$file_name"
echo "second_line ~" >> "$file_name"
echo "EOF" >> "$file_name"

echo "cat $file_name"

cat "$file_name"


