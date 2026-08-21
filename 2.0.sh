#!/usr/bin/env bash
while true; do
    echo "欢迎使用bash简单计算器2.0，该计算器无法进行复杂运算，只能进行单项运算"
# 漫长的写入步骤
    RAM=()
    sleep 1
    read -p "请输入数字：" DATA1
    sleep 0.5
    echo "正在写入内存..."
    RAM+=( "$DATA1" )
    sleep 0.5
    echo "写入完成"
    sleep 0.04
    read -n 1 -p "请输入运算符号（+-*/）:" DATA2
    sleep 0.5
    echo " "
    sleep 0.5
    echo "正在写入内存..."
    RAM+=( "$DATA2" )
    sleep 0.5
    echo "完成！"
    sleep 0.5
    read -p "请输入数字:" DATA3
    sleep 0.5
    echo "正在写入内存..."
    RAM+=( "$DATA3" )
    sleep 0.5
    echo "完成!"
    sleep 0.5
    echo "正在将数据拉至微处理器"
    sleep 0.5
    echo "正在计算，请稍后"
    sleep 3
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
