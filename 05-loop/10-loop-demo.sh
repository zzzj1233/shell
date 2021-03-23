file_path=$1
key_wd=$2

OLD=$IFS

if [ "$key_wd" == "" ]
then
  key_wd="ERROR"
fi

if [ "$file_path" == "" ]
then
    echo "请提供文件路径"
elif [ ! -r "$file_path" ]
then
    echo "文件不存在或不可读"
elif [ ! -s "$file_path" ]
then
    echo "文件没有内容可读"
else
    IFS=$'\n'
    
    for line in `tail -1000 $file_path`
    do
        if [[ "$line" == *"$key_wd"* ]]
        then
            echo "error : $line"
        fi
    done
fi

IFS=$OLD