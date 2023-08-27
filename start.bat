@echo off
title ���ݻ�(Grasscutter)1.7.0����ԭ��4.0��/Grasscutter 1.7.0 For Genshin Impact 4.0
:: ������������������
:: Server startup parameter settings
set WaitingTime=10
:: �Զ������ȴ�ʱ�� !!!��ֻ��ʹ����Ϊ��λ
:: Automatic restart waiting time !!!You can only use seconds as a unit
set Max=6G
:: ����ڴ� !!!��ֻ��ʹ��M����GΪ��λ
:: Max Memory !!!You can only use M or G as the unit
:: 1G=1024M
set Min=1M
:: ��С�ڴ� !!!��ֻ��ʹ��M����GΪ��λ
:: Min Memory !!!You can only use M or G as the unit
:: 1G=1024M
set ServerJava=java
::  Server Java Settings file path settings.Normally, you do not need to change this item
:: ������java�ļ�·������.ͨ���������������Ĵ���
set additional=
:: Additional Java parameters.Normally, you do not need to change this item
:: ����java����.ͨ���������������Ĵ���
set jar=grasscutter_1.7.0
:: ��jar����ִ���ļ���
:: " Jar "executable file name

:start
echo.
echo _______________________________________________________________________
echo.
echo ����������չʾ
echo ����ڴ棺%Max% / ��С�ڴ棺%Min%
echo �Զ���������ʱ�䣺%WaitingTime%��
echo ������Java������%ServerJava%
echo �����������Java����������%additional%
echo ��ִ���ļ�����%jar%.jar
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
echo ������������......
echo Server Loading......
echo.

%ServerJava% -Xmx%Max% -Xms%Min% %additional% -jar %jar%.jar

echo.
echo �������ѹر�
echo The server has been shut down
echo.
echo �ȴ� %WaitTime% ���Զ���������
echo Automatically restart after waiting for %WaitingTime%
echo.
timeout %WaitingTime% /NOBREAK
goto start
pause