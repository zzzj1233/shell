sql_file=`mktemp -t person.sql.XXXXXX`
# 默认就是空格和换行
# IFS=" "
while read name age sex
do
    sql="insert into person values ($name, $age, $sex)"
    echo "$sql" >> "$sql_file"
done < "$1"

cat "$sql_file"