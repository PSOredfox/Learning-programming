#!/usr/bin/env bash
echo "txt编辑器"
sleep 0.1
if command -v nano &> /dev/null; then
    sleep 0.2
    echo "成功" > /dev/null
else
    sleep 0.2
    echo "error!"
fi
sleep 0.3
read -p "请输入文件路径（单次运行无法修改！（路径结尾一定要带/号！））" lujing

while true; do
    sleep 0.5
    sleep 1
    ls "$lujing"
    sleep 1
    read -p "请输入文件名 " wenjian
    sleep 0.3
    read -p "请输入模式|查看[0]|编辑[1]" moshi
    if [[ "$moshi" == "1" ]]; then
       nano ${lujing}${wenjian}.txt
       guangbo="%%%00_1"
    fi
    if [[ "$moshi" == "0" ]]; then
       cat ${lujing}${wenjian}.txt
       guangbo="&&&00_2"
    fi
   sleep 0.5
   
   if [[ "$guangbo" == "&&&00_2" ]]; then
       read -p "
       延迟清屏，按1继续" qingping
       if [[ "$qingping" == "1" ]]; then
           clear
       fi
   elif [[ "$guangbo" == "%%%00_1" ]]; then
       clear
   fi
   
   echo "完成！"
    sleep 2
    
done