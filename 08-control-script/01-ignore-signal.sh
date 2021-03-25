# 使用trap命令无视signint信号 (ctrl + c)
# 语法 trap command `singal`

trap "echo 'ingnore ctrl + c ~~~'" sigint

for ((i = 0; i < 10 ; i++))
do
    echo "i = $i"
    # 休眠1s
    sleep 1
done

# ./test.sh 
# i = 0
# ^Cingnore ctrl + c ~~~
# i = 1
# ^Cingnore ctrl + c ~~~
# i = 2
# ^Cingnore ctrl + c ~~~
#i = 3
