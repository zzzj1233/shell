# mktemp -d选项将会创建一个文件夹

# 在tmp目录创建一个dir
dir_name=`mktemp -dt test.XXXX`

cd "$dir_name"

touch 1.txt
touch 2.txt
touch 3.txt
mkdir abc.log

ls -al --color=auto "$dir_name"
