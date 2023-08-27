#!/bin/bash

# 服务器启动参数设置
# Server startup parameter settings
WaitingTime=10
# 自动重启等待时间 !!!你只能使用秒为单位
# Automatic restart waiting time !!!You can only use seconds as a unit
Max=6G
# 最大内存 !!!你只能使用M或者G为单位
# Max Memory !!!You can only use M or G as the unit
# 1G=1024M
Min=1M
# 最小内存 !!!你只能使用M或者G为单位
# Min Memory !!!You can only use M or G as the unit
# 1G=1024M
ServerJava=java
#  Server Java Settings file path settings.Normally, you do not need to change this item
# 服务器java文件路径设置.通常情况下您无需更改此项
additional=
# Additional Java parameters.Normally, you do not need to change this item
# 额外java参数.通常情况下您无需更改此项
jar=grasscutter_1.7.0
# ”jar“可执行文件名
# " Jar "executable file name
# 设置检测是否重新启动文件名称和内容/Set whether to restart the file name and content for detection
FileName="serveropen.txt"   # 检测的文件名称/Detected file name
FileContent="1"   # 检测的文件内容/Detected file content

echo "除草机(Grasscutter)1.7.0用于原神4.0版/Grasscutter 1.7.0 For Genshin Impact 4.0"
while true
do
# 检查文件是否存在/Check if the file exists
if [[ -f "$FileName" ]]; then
    # 读取文件内容/Read File Content
    Check=$(cat "$FileName" 2>/dev/null)   # 获取文件内容并忽略文件访问权限问题的报错信息/Error message for obtaining file content and ignoring file access permission issues

    if [[ "$Check" = "$FileContent" ]]; then
        echo
        echo _______________________________________________________________________
        echo
        echo "服务器参数展示"
        echo "最大内存：$Max / 最小内存：$Min"
        echo "自动重新启动时间：$WaitingTime 秒"
        echo "服务器Java参数：$ServerJava"
        echo "服务器额外的Java启动参数：$additional"
        echo "可执行文件名：$jar.jar"
        echo
        echo _______________________________________________________________________
        echo

        Echo
        Echo _______________________________________________________________________
        Echo
        Echo "server parameter display"
        Echo "Maximum memory: $Max / Minimum memory: $Min"
        Echo "automatic restart time: $WaitingTime seconds"
        Echo "Server Java Parameters: $ServerJava"
        Echo "Additional Java startup parameters for echo server: $additional"
        Echo "executable file name: $jar.jar"
        Echo
        Echo _______________________________________________________________________
        Echo

        echo
        echo 服务器加载中......
        echo Server Loading......
        echo
        echo "等待 $WaitingTime 秒后启动"
        echo "Wait for $WaitingTime seconds to start"
        sleep 10s   # 等待时间/waiting time
        echo "启动中"
        echo "Starting"
        "$ServerJava" -Xmx"$Max" -Xms"$Min" "$additional" -jar "$jar".jar"   # 启动命令/Start command
        echo
        echo 服务器已关闭
        echo The server has been shut down
        echo
    else
        echo "检测到文件内容不匹配,已停止自动启动"
        echo "Detected file content mismatch, automatic start stopped"
        exit 1
    fi
else
    echo "文件 $FileName 不存在"
    Echo "File $FileName does not exist"
    echo -n "$FileContent" > "$FileName"   # 写入指定内容到文件中/Write the specified content to a file
    echo "已自动为您创建 $FileName 文件,并将 $FileContent 的内容写入 $FileName"
    Echo "The $FileName file has been automatically created for you and the contents of $FileContent have been written to $FileName"
    echo "需要启动请手动重新运行脚本"
    Echo "Need to start, please manually rerun the script"
    exit 1
fi
done