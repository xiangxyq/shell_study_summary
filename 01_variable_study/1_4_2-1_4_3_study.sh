#!/bin/bash

##1.4.2 declare用法  -i 声明成整数， -a声明成数组 -x声明成环境变量 -r 变量不可重新赋值
#如果不用declare声明整数型变量，shell默认是字符串，
echo "ex 1.4.2 #######"
var=1+2
echo "不用declare声明的结果： "$var
declare -i var=1+2
echo "用declare声明的结果： "$var
echo -e "-------------------------------------------------------------------------------------\n"

##1.4.3 数组的定义，访问的时候最好加上一对大括号
echo "ex 1.4.3 #######"
array[1]="one"
array[2]="two"
array[3]="three"
echo "数组的访问： "${array[1]}"  "${array[2]}"  "${array[3]}
echo -e "-------------------------------------------------------------------------------------\n"

