OLD=$IFS

file_content=`cat /etc/passwd`

IFS=$'\n'

# 先使用行分割
for line in $file_content
do
    # 再使用空格分隔
    IFS=" "
    for item in $line
    do
        echo "$item"
    done
    IFS=$'\n'
done

IFS=$OLD