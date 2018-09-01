#!/bin/bash

##1.1.1 echo是输出到屏幕
echo "ex 1.1.1"
var=hellowrold
echo $var

##1.3.1
var="hello world"

## 1.2.1访问变量的方式，推荐使用下面的方式
echo "ex 1.2.1"
echo $var
echo ${var}

## 1.3.1等号两边不能有空格,字符串中间也不能有空格，如果需要请用双引号
#var = helloworld
#var=hello world

##1.3.2 单引号中特殊字符仅作为一般字符处理， 双引号中的特殊字符如$，保持原有特性
echo "ex 1.3.2"
var=helloworld
echo 'var is $var'
echo "var is $var"

##1.3.3 如何将一个命令的执行结果保存到变量中，采用 `cmd`或$（cmd）,我喜欢前一种风格
echo "ex 1.3.3,显示当前目录下的文件详情"
var=`ls -l`
echo $var

var=$(ls -l)
echo $var
