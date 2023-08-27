@echo off
title 除草机(Grasscutter)1.7.0用于原神4.0版/Grasscutter 1.7.0 For Genshin Impact 4.0
:: 服务器启动参数设置
:: Server startup parameter settings
set WaitingTime=10
:: 自动重启等待时间 !!!你只能使用秒为单位
:: Automatic restart waiting time !!!You can only use seconds as a unit
set Max=6G
:: 最大内存 !!!你只能使用M或者G为单位
:: Max Memory !!!You can only use M or G as the unit
:: 1G=1024M
set Min=1M
:: 最小内存 !!!你只能使用M或者G为单位
:: Min Memory !!!You can only use M or G as the unit
:: 1G=1024M
set ServerJava=java
::  Server Java Settings file path settings.Normally, you do not need to change this item
:: 服务器java文件路径设置.通常情况下您无需更改此项
set additional=
:: Additional Java parameters.Normally, you do not need to change this item
:: 额外java参数.通常情况下您无需更改此项
set jar=grasscutter_1.7.0
:: ”jar“可执行文件名
:: " Jar "executable file name

:start
echo.
echo _______________________________________________________________________
echo.
echo 服务器参数展示
echo 最大内存：%Max% / 最小内存：%Min%
echo 自动重新启动时间：%WaitingTime%秒
echo 服务器Java参数：%ServerJava%
echo 服务器额外的Java启动参数：%additional%
echo 可执行文件名：%jar%.jar
echo.
echo _______________________________________________________________________
echo.

Echo.
Echo _______________________________________________________________________
Echo.
Echo server parameter display
Echo Maximum memory: %Max% / Minimum memory: %Min%
Echo automatic restart time: %WaitingTime% seconds
Echo Server Java Parameters: %ServerJava%
Echo Additional Java startup parameters for echo server: %additional%
Echo executable file name: %jar%.jar
Echo.
Echo _______________________________________________________________________
Echo.

echo.
echo 服务器加载中......
echo Server Loading......
echo.

%ServerJava% -Xmx%Max% -Xms%Min% %additional% -jar %jar%.jar

echo.
echo 服务器已关闭
echo The server has been shut down
echo.
echo 等待 %WaitingTime% 后自动重新启动
echo Automatically restart after waiting for %WaitingTime%
echo.
timeout %WaitingTime% /NOBREAK
goto start
pause
