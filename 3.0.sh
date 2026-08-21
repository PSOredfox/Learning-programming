#!/usr/bin/env bash
while true; do
    echo "欢迎使用bash简单计算器3.0，我们优化了算法！不需要分次输入符号与数字了 可以直接输入整体的式子！，该计算器无法进行复杂运算，只能进行单项运算"
# 漫长的写入步骤
    sleep 1
    RAM=()
    read -p  "请输入算式：" Data_class
    echo "正在将数据写入内存"
    Data_class=$(echo "$Data_class" | tr -d $' \n\r')  #删掉多余字符
    
    
    DATA0=${Data_class%%[-+*/]*} # 妈卖批，不要把减号放在两个符号中间！！不要把减号放在两个符号中间！！不要把减号放在两个符号中间！！！不要让傻逼bash把他当横杠处理了喂!（掐头）
    RAM+=( "$DATA0" )

    
    zhongjian=${Data_class#$DATA0} # 取尾（$zhonhjian变成残片了）
    DATA1=${zhongjian:0:1} #取符号
    
    RAM+=( "$DATA1" )
    DATA2=${zhongjian:1} # 取走最后一个字符
    RAM+=( "$DATA2" )
    
    
    sleep 1
    echo "完成!"
    sleep 0.5
    echo "正在载入微处理器"
    sleep 0.5
    echo "完成!"
    sleep 0.5
    echo "正在计算."
    sleep 1
    echo "正在计算.."
    sleep 1
    echo "正在计算..."
    sleep 0.5
    
# 终于开始正餐环节了😋
# 先提取进变量
    a=${RAM[0]}
    b=${RAM[1]}
    c=${RAM[2]}
    
# 然后进行if判断,判断符号,以进行计算
    if [[ "$b" == "+" ]]; then
        Fine=$(( a + c ))
    elif [[ "$b" == "-" ]]; then
        Fine=$(( a - c ))
    elif [[ "$b" == "*" ]]; then
        Fine=$(( a * c ))
    elif [[ "$b" == "/" ]]; then
        Fine=$(( a / c ))
    else
        echo "错误，未知的计算符"
        exit
    fi
    
    
    
# 让我们来取结果
    echo "计算完成!结果为:$Fine"
    sleep 1
    echo "3"
    sleep 1
    echo "2"
    sleep 1
    echo "1"
    sleep 0.5
    echo "上次计算的结果将会存储至下一次的屏幕内,请放心😁"
    sleep 0.5
    sleep 0.3
    clear
    Fine2=$Fine
    echo "您上次的计算结果是:$Fine2"
    sleep 0.5
    echo "按Ctrl+C以终止运行"
    sleep 0.5
done