#!/bin/bash
red(){
    echo -e "\e[31m$*\e[0m"
}
yellow(){
    echo -e "\e[33m$*\e[0m"
}
green(){
    echo -e "\e[32m$*\e[0m"
}
blue(){
    echo -e "\e[36m$*\e[0m"
}
purple(){
    echo -e "\e[35m$*\e[0m"
}
randcolor(){
    case $[$RANDOM%5+1] in
    1)
        red $*
    ;;
    2)
        yellow $*
    ;;
    3)
        green $*
    ;;
    4)
        blue $*
    ;;
    5)
        purple $*
    esac
}
ping(){
    echo "$[$RANDOM%60+60]ms"
}
eecho(){
    randsleep
    echo -e "$(date +'%F %T') $*"
}
randsleep(){
    sleep 0.$[$RANDOM%5+5]
}
clear
eecho "——————测试四网回城路由——————"
sleep 1
eecho "北京电信: 113.59.224.1 `randcolor 电信CN2 GIA [极品线路]` `ping`"
eecho "北京联通: 61.49.137.5 `randcolor 电信CN2 GIA [极品线路]` `ping`"
eecho "北京移动: 218.205.152.14 `randcolor 电信CN2 GIA [极品线路]` `ping`"
eecho "上海电信: 101.95.120.109 `randcolor 电信CN2 GIA [极品线路]` `ping`"
eecho "上海联通: 112.65.35.62 `randcolor 电信CN2 GIA [极品线路]` `ping`"
eecho "上海移动: 183.192.160.3 `randcolor 电信CN2 GIA [极品线路]` `ping`"
eecho "广州电信: 14.215.116.1 `randcolor 电信CN2 GIA [极品线路]` `ping`"
eecho "广州联通: 27.40.0.30 `randcolor 电信CN2 GIA [极品线路]` `ping`"
eecho "广州移动: 221.183.63.121 `randcolor 电信CN2 GIA [极品线路]` `ping`"
eecho "曹县教育网: 219.218.47.1 `randcolor 电信CN2 GIA [极品线路]` `ping`"
