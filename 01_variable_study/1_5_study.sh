#!/bin/bash

##1.5.1 # ## % %%四种情况的使用
echo "ex 1.5.1 #######"
# 变量从左边以最小匹配删除，用#，请看例子
path=$PATH
echo "path 变量为 "$path
#删除从/开始到第一次出现:时的内容，*是通配符，后面会讲到，代表任意数目字符
echo "左最小删除后的path 变量为 "${path#/*:}
#比如我的电脑执行结果为：
#path 变量为 /home/chenjiang/anaconda3/bin:/home/chenjiang/bin:/home/chenjiang/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
#左最小删除后的path 变量为 /home/chenjiang/bin:/home/chenjiang/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

# 变量从左边以最大匹配删除，用##，请看例子

echo "左最大删除后的path 变量为 "${path##/*:}
#执行结果：
#左最大删除后的path 变量为 /snap/bin

#变量从右边以最小最大匹配删除，此处不做演示，分别用% %%操作

echo -e "-------------------------------------------------------------------------------------\n"

##1.5.2 变量内容替换一  如果变量为空字符串或者为设置的情况，程序代码执行过程中检测到，赋予特定的值 var=${var:-"初始默认值"}
echo "ex 1.5.2 #######"
#程序中如果没有yourname=lisi这行代码，默认yourname是没有赋初值，调用yourname=${yourname:-"zhangsan"}会进行测试是否为空或者未设置变量，如果没有设置或者为空字符串，那么赋一个初始值“zhangsan”
#如果有yourname=lisi这行代码，会检测到已有赋值，那么“zhangsan”就不会赋给变量yourname
#yourname=lisi
yourname=${yourname:-"zhangsan"}
echo "$yourname"
echo -e "-------------------------------------------------------------------------------------\n"

##1.5.3 变量内容替换二  将字符串中的特定字符串替换成其他字符串 ${string/oldstring/newtring}  ${string//oldstring/newtring}
echo "ex 1.5.3 #######"
path=$PATH
echo "path 变量为 "$path
#将匹配到的第一个替换 ${string/oldstring/newtring} 比如将path变量中的第一个字符串chenjiang换成字符串root
echo "path 变量替换第一个匹配的字符串为 "${path/chenjiang/root}
#执行结果：
#path 变量为 /home/chenjiang/anaconda3/bin:/home/chenjiang/bin:/home/chenjiang/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
#path 变量替换第一个匹配的字符串为 /home/root/anaconda3/bin:/home/chenjiang/bin:/home/chenjiang/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

#将匹配到的全部替换 ${string//oldstring/newtring} 比如将path变量中的所有的字符串chenjiang换成字符串root
echo "path 变量替换全部匹配的字符串为 "${path//chenjiang/root}
#执行结果为：
#path 变量替换全部匹配的字符串为 /home/root/anaconda3/bin:/home/root/bin:/home/root/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

echo -e "-------------------------------------------------------------------------------------\n"


