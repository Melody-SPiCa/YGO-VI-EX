@echo off     
@title ������ð�����ӭ�򿪳����Դ���������
@echo ��һ��ʹ��������ʱ���������ע����������
@echo ΢���ö�������ʦ��YGO-VI-EX������������ǲ�һ���ģ���Ҫ����һ���ã�лл֧�֣�лл������
@echo �ٴ�˵������һ��ʹ��������ǰ�������ע����������
@echo ���ң����������֮���ǰѴ򿪵�ѹ����������ֵ�Ψһ���Ǹ��ļ�������ļһ���ȫ���ó�����ͬ���ļ����ǵ�YGO-VI-EX��Ŀ¼��
@echo �����Դ�YGO-VI-EX��������������������WIN10ϵͳ��������ֹ�ע�ἴ��ʵ��ע�ᣡ
@echo ��ע��������ʱ����һ�����������������������谴0�ٽ���ע�Ჽ�輴�����ע�ᣡ
@echo ע���������������硰�ܾ����ʡ���BUG��ѡ�֣��뼰ʱ�鿴ע����������ֹ�ע�ᣡ
@echo ��������������棡
@color 0e

:��ʼ
@echo.
echo ��� ��� ��� ��� ������� ��� ��� ��� ���
echo ��� ��� ��� ��� ������� ��� ��� ��� ���  
echo ��� ���     0.ע��������                 ��� ���
echo ��� ���     1.����YGO-VI-EX������        ��� ���
echo ��� ���     2.����YGO-VI-EX����          ��� ���
echo ��� ���     3.��������ȫ��               ��� ���
echo ��� ���     4.������Koishi������         ��� ���
echo ��� ���     5.�ȿ�����                   ��� ���
echo ��� ���     6.����ʦ�İ�FA��             ��� ���
echo ��� ���     7.�鿴����ɫͼ               ��� ���
echo ��� ���     8.�鿴ע������               ��� ���
echo ��� ���     9.��������ƽ̨����         ��� ���
echo ��� ���     10.�������������            ��� ���
echo ��� ���     11.YGOƤ������               ��� ���
echo ��� ���     12.��Ԥ�鿨������            ��� ���
echo ��� ���     13.�˳�������                ��� ���
echo ��� ��� ��� ��� ������� ��� ��� ��� ���
echo ��� ��� ��� ��� ������� ��� ��� ��� ���
@echo.
set /p num=�������Ӧ���֣���ENTERȷ����ֱ�Ӱ�ENTER���ظ���һ��������
if %num%==1 (goto 1)
if %num%==2 (goto 2)
if %num%==3 (goto 3)
if %num%==4 (goto 4)
if %num%==5 (goto 5)
if %num%==6 (goto 6)
if %num%==7 (goto 7)
if %num%==8 (goto 8)
if %num%==9 (goto 9)
if %num%==10 (goto 10)
if %num%==11 (goto 11)
if %num%==12 (goto 12)
if %num%==13 (exit)  

:0
@echo.
echo ��������Ĳ���ϵͳ���ͣ�ѡ����ʵ�ע�᷽ʽŶ��
@echo.
echo ����64λ�Ĳ���ϵͳ������32λ�Ĳ���ϵͳ�أ�
echo 64.64λ����ϵͳ
echo 32.32λ����ϵͳ
echo 00.������һ��
set /p num=�������Ӧ���ͣ���ENTERȷ����ֱ�Ӱ�ENTER���ظ���һ��������
if %num%==64 (goto 64)
if %num%==32 (goto 32)
if %num%==00 (goto ��ʼ)

:64
if exist "%SystemRoot%\System32" path %path%;%windir%\SysNative;%SystemRoot%\System32;%~dp0
bcdedit >nul
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto UACAdmin)
:UACPrompt
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
exit /B
:UACAdmin
cd /d "%~dp0"
echo ��ǰ����·���ǣ�%CD%
echo �ѻ�ȡ����ԱȨ��
ren "wget-64.exe" "wget.exe"
copy wget.exe c:\\Windows\System32
if exist "%SystemRoot%\SysWOW64" path %path%;%windir%\SysNative;%SystemRoot%\SysWOW64;%~dp0
bcdedit >nul
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto UACAdmin)
:UACPrompt
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
exit /B
:UACAdmin
cd /d "%~dp0"
echo ��ǰ����·���ǣ�%CD%
echo �ѻ�ȡ����ԱȨ��
copy wget.exe c:\\Windows\SysWOW64
ren "wget.exe" "wget-64.exe"
pause
goto ��ʼ

:32
if exist "%SystemRoot%\System32" path %path%;%windir%\SysNative;%SystemRoot%\System32;%~dp0
bcdedit >nul
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto UACAdmin)
:UACPrompt
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
exit /B
:UACAdmin
cd /d "%~dp0"
echo ��ǰ����·���ǣ�%CD%
echo �ѻ�ȡ����ԱȨ��
ren "wget-32.exe" "wget.exe"
copy wget.exe c:\\Windows\System32
if exist "%SystemRoot%\SysWOW64" path %path%;%windir%\SysNative;%SystemRoot%\SysWOW64;%~dp0
bcdedit >nul
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto UACAdmin)
:UACPrompt
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
exit /B
:UACAdmin
cd /d "%~dp0"
echo ��ǰ����·���ǣ�%CD%
echo �ѻ�ȡ����ԱȨ��
copy wget.exe c:\\Windows\SysWOW64
ren "wget.exe" "wget-32.exe"
pause
goto ��ʼ

:1
wget -t 0 -c https://gitee.com/vi1911/YGO-VI-EX-Full/repository/archive/master.zip
ren "master.zip" "YGO-VI-EX������.zip"
FOR %%F IN (YGO-VI-EX������.zip) DO START %%F
pause
goto ��ʼ

 
:2
wget -t 0 -c https://gitee.com/vi1911/YGO-VI-EX-Updates/repository/archive/master.zip
ren "master.zip" "YGO-VI-EX����.zip"
FOR %%F IN (YGO-VI-EX����.zip) DO START %%F
pause
goto ��ʼ

:3
start http://ygocore.ys168.com/
pause
goto ��ʼ

:4
start http://koishi.222diy.gdn/download.html
pause
goto ��ʼ

:5
start https://ygobbs.com/
pause
goto ��ʼ

:6
start https://afdian.net/@YGO-VI
pause
goto ��ʼ

:7
@echo.
echo ��ʲôɫͼ����̬��
echo ���ɶ�أ������Ӷ���ɫͼ��
echo ���������˰��㣡
echo Ҫ��ɫͼ�Լ�ȥ�°���������ɫͼ�Ĵ��̬��
echo �ߣ��Լ�ȥߣ�Լ�ȥ�ɣ�
echo �������ԵĴ��̬��
pause
exit

:8
start "" ".\download\ע������.txt"
pause
goto ��ʼ
 
:9
start http://www.downza.cn/soft/27231.html
pause
goto ��ʼ

:10
wget -t 0 -c https://gitee.com/vi1911/textures/repository/archive/master.zip
ren "master.zip" "���������.zip"
FOR %%F IN (���������.zip) DO START %%F
pause
goto ��ʼ

 
:11
wget -t 0 -c https://gitee.com/vi1911/skin/repository/archive/master.zip
ren "master.zip" "YGOƤ����ѹ�������ļ��н�ѹ��YGO-VI-EX��Ŀ¼��.zip"
FOR %%F IN (YGOƤ����ѹ�������ļ��н�ѹ��YGO-VI-EX��Ŀ¼��.zip) DO START %%F
pause
goto ��ʼ

:12
wget -t 0 -c https://gitee.com/vi1911/deck/repository/archive/master.zip
ren "master.zip" "��Ԥ�鿨��.zip"
FOR %%F IN (��Ԥ�鿨��.zip) DO START %%F
pause
goto ��ʼ

:13
exit

@pause   
@echo on