# until和while刚好相反,其余没有区别
# until是不满足条件则循环,直到满足条件为止
i=0
end=10

until [ "$i" -eq "$end" ]
do
    echo "i = $i"
    i=$[$i + 1]
done    