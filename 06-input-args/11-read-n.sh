# read -n number
# number用于指定字符数 
# 一旦用户输入达到该字符数,无需按下回车,read就会结束阻塞

while read -n1 -p "exit? (y / n)" answer
do
    case "$answer" in
    y | Y)
        echo "ok , will shutdown now"
        break
    ;;
    n | N)
        echo "ok , will continue work"
        break
    ;;
    *)
        echo "y / n"
    ;;
    esac
done