# 嵌套循环

outer_end=3
inner_end=5


for ((i = 0; i < "$outer_end"; i++))
do
    
    echo "outer i = $i"

    j=0

    while [ $j -ne "$inner_end" ]
    do
        echo $'\t' " inner j = $[$j * $i]"
        j=$[$j + 1]
    done

    echo

done