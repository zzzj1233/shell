# 1. 定义一个数组
num_arr=(1 2 3 4 5)

# 2. 直接输出一个数组,那么只会输出数组的第一个元素
echo "num_arr == $num_arr"

# 3. 针对下标进行输出
echo "index.2 == ${num_arr[2]}"

# 4. 输出全部元素,(两种方式都可以)
echo "num_arr* == ${num_arr[*]}"
echo "num_arr@ == ${num_arr[@]}"

# 5. 获取数组的长度
echo "num_arr.len#* == ${#num_arr[*]}"
echo "num_arr.len#@ == ${#num_arr[@]}"

# 6. 移除数组元素
unset num_arr[0]

# 7. 移除数组
unset num_arr