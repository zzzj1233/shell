# 如果想后台运行shell,只需要在shell后面加上一个&即可

# 但是shell的输出任会输出到stdout (默认行为)

echo "run me in background !"

for ((i = 0; i < 3 ; i++))
do
    echo "i = $i"
    # 休眠1s
    sleep 1
done

# ./test.sh & 1. 后台模式运行
# [1] 1051410 2. 该任务的jobId
# [root@iZ2ze6pdfarj0a79wk4catZ sh]# run me in background !
# i = 0
# ll    3. 任可以执行命令
# total 4
# -rwxr--r-- 1 root root 234 Mar 25 11:41 test.sh
# [root@iZ2ze6pdfarj0a79wk4catZ sh] i = 1
# i = 2
