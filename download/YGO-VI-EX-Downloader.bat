@echo off     
@title ��ӭʹ������ʦ��YGO-VI-EX������
@echo ��һ��ʹ��������ʱ���������ע����������
@echo ϵͳûװ��C�̵Ĵ��ɣ�����������ϵͳ�Ĵ��ɣ�������Ѱ���ˣ�����ѯ����ʦ��
@echo лл֧�֣�лл������
@echo �����ǣ�%date%    
@echo �����ǣ�%time% 
@echo ������ô�����һ�죡
@echo ע���������������硰�ܾ����ʡ���BUG��ѡ�֣��뼰ʱ�鿴ע����������ֹ�ע�ᣡ
@color 0e

:��ʼ
@echo.
echo ��� ��� ��� ��� ������� ��� ��� ��� ���
echo ��� ��� ��� ��� ������� ��� ��� ��� ��� 
echo ���                                            ��� 
echo ��� ���     0.ע��������                 ��� ���
echo ��� ���     1.����YGO-VI-EX������        ��� ���
echo ��� ���     2.����YGO-VI-EX����          ��� ���
echo ��� ���     3.��������ȫ��               ��� ���
echo ��� ���     4.������Koishi������         ��� ���
echo ��� ���     5.�ȿ�����                   ��� ���
echo ��� ���     6.����ʦ�İ�FA��             ��� ���
echo ��� ���     7.�鿴����ɫͼ               ��� ���
echo ��� ���     8.�鿴ע������               ��� ���
echo ��� ���     9.�˳�������                 ��� ���
echo ���                                            ���
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
if %num%==9 (exit)  

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
ren "wget-64.exe" "wget.exe"
copy wget.exe c:\\Windows\System32
copy wget.exe c:\\Windows\SysWOW64
ren "wget.exe" "wget-64.exe"
pause
goto ��ʼ

:32
ren "wget-32.exe" "wget.exe"
copy wget.exe c:\\Windows\System32
copy wget.exe c:\\Windows\SysWOW64
ren "wget.exe" "wget-32.exe"
pause
goto ��ʼ

:1
wget -t 0 -c https://github.com/ViolentIris/YGO-VI-EX-Full/archive/master.zip
ren "master.zip" "YGO-VI-EX������.zip"
pause
goto ��ʼ

 
:2
wget -t 0 -c https://github.com/ViolentIris/YGO-VI-EX-Updates/archive/master.zip
ren "master.zip" "YGO-VI-EX����.zip"
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

:8
start "" ".\ע������.txt"
pause
goto ��ʼ
 
:9
exit

@pause   
@echo on