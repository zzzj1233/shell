# 捕捉shell退出,可能是收到信号退出,或者是执行完毕,在退出时执行指定的command

trap "echo 'shell exit ...'" exit


for ((i = 0; i < 2 ; i++))
do
    echo "i = $i"
    # 休眠1s
    sleep 1
done