#! /bin/bash

##2.3  数据重定向 

echo "ex 2.3 #######"

# > >>使用
echo -e "$PATH\n" > test_1.txt
echo -e "$HOME\n" > test_1.txt

echo -e "$PATH\n" >> test_2.txt
echo -e "$HOME\n" >> test_2.txt

#运行结果分别为：
# > 数据重定向
#/home/chenjiang

# >> 数据重定向
#/home/chenjiang/anaconda3/bin:/home/chenjiang/bin:/home/chenjiang/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
#
#/home/chenjiang

#可以看出 >> 是追加操作


#有时候写脚本时候，错误信息我们不希望打印到屏幕上，可以输出到 /dev/null 设备中
cat test.txt 2> /dev/null
#如果直接执行 cat test.txt ，由于test.txt不存在，会报 cat: test.txt: No such file or directory 的错误， 2>表示标准错误输出， 如果不希望输出错误信息，就重定向到黑洞设备中
#如果标准输出也不想打印(标准输出和标准错误输出同时重定向)，那么就执行 cat test.txt &> /dev/null， 或者 cat test.txt > /dev/null 2>&1


# < <<的区别，  <是将数据重定向输入   <<指定输入结束字符串，比如 << "eof",当输入eof表示结束输入。


echo -e "-------------------------------------------------------------------------------------\n"
