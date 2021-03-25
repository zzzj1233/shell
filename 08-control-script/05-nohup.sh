# nohup也用于后台运行command,和在shell名称后指定&不同
# nohup默认将stdout重定向到nohup.out文件


# 常见用法

# 1. stdout重定向到nohup.out
# 2. 将stderr重定向到stdou
# 3. 后台模式运行nohup
nohup /usr/local/sh/test.sh > nohup.out 2>&1 &