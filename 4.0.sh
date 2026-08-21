#!/usr/bin/env bash
while true; do
    echo "欢迎使用bash计算器4.0，重大更新！架构算法重写，使用外置bc处理器计算,支持浮点计算，多项式计算还在开发，尽情期待！"
    sleep 0.2
    echo "请不要直接输入两个符号。或者字母，我只能保证拦截单个非字母非各种括号的非法字符，输入其他造成运算错误会程序崩溃的话自己想办法"
    sleep 0.5
    if command -v pkg &> /dev/null; then # 检测当前环境是否支持pkg install安装命令
        echo "完成" > /dev/null
    else
        echo "您当前环境不支持4.0计算器，请使用版本更低的计算器"
        exit
    fi
    
    sleep 0.5
    echo "符号参考：+=*/"
    sleep 0.2
    read -p "请输入算式：" DATA
    while true; do
        if [[ -z "$DATA" || "$DATA" == " " || "$DATA" == $'\n' || "$DATA" == $'\r'  || "$DATA" == "+" || "$DATA" == '-' || "$DATA" == '*' || "$DATA" == "/" || "$DATA" == "=" ]]; then
            echo "非法字符！，重新输入" 
            sleep 0.5
            read -p "重输：" clean_data
            DATA=$clean_data
            
            sleep 0.5
        else
            break
        fi                  # 判断是否有非法字符
    done
    
    sleep 0.5
    echo "正在写入内存"
    sleep 1
    echo "完成！"
    sleep 0.5
    echo "正在载入协处理器"
    sleep 0.5
    echo "完成！"
    sleep 0.5
    echo "正在运算."
    sleep 0.3
    echo "正在运算.."
    sleep 0.3
    echo "正在运算..."
    sleep 3
    
    
    while true; do
        if command -v bc &> /dev/null; then # 检测bc
            jieguo=$(echo "scale=4; $DATA" | bc -l )
            break 1
        else
            echo "您可能没有安装外置处理器，将自动为您安装"
            sleep 0.7
            pkg install -y bc
            clear
            
        fi
    done  
    
    # 输出
    sleep 0.5 
    echo "计算成功，结果为：$jieguo"
    xiayici=$jieguo
    sleep 0.5
    echo "上次计算的结果将会存储至下一次的屏幕内,请放心😁"
    sleep 2
    clear
    echo "您上次的结果为：$xiayici"
    sleep 1
    echo "输入Ctrl+C退出"
done