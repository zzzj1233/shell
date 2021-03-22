# 接收第一个参数
userName=$1

if grep $userName /etc/passwd
then
    echo "$userName in system"
elif ls -al /home/$userName
then
    echo "$userName not in system , but has user dir"
else 
    echo "who is $userName ? "
fi