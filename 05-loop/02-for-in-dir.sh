dir=$1

if [ "$dir" == "" ]
then
    echo "请输入目录"
    exit 1
fi


if [ ! -d "$dir" ]
then
    echo "$dir 不是一个目录"
    exit 1
fi

for file in $dir/*
do
    if [ -f "$file" ]
    then
        echo "$file is file"
    elif [ -d "$file" ]
    then
        echo "$file is dir"
    else
        echo "unknown file $file"
    fi
done