@ECHO OFF
@cls
Color 09
echo.
echo.
echo.
@echo      ���������������������������������������������������������������������
echo.
echo.
@echo            ��     �����   ����� �����    ���     ����  ��  ��  ����    
@echo            ��     ��  ��  ��    ��  ��   ���    ��  �� �� ��  ��  ��   
@echo            ��     ��  ��  ��    ��  ��  �� ��  ��      �� ��  ��        
@echo            ��     ��  ��  ����� ��  ��  �� ��  ��      ����   ����    
@echo            ��     �����   ��    �����   �� ��  ��      �����    ���� 
@echo            ��     �� ��   ��    ��     ������� ��      �� ��      �� 
@echo            ��     ��  ��  ��    ��     ��   ��  ��  �� ��  �� ��  ��
@echo            ������ ��   �� ����� ��     ��   ��   ����  ��  ��  ����
echo.  
echo.  
@echo      ���������������������������������������������������������������������      
echo.  
echo.  
echo.                             SILENT INSTALLATION...
echo.                   
@echo off
FOR %%i IN ("idm*.exe") DO Set FileName="%%i"
%FileName% /SILENT

powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Desktop\IDM.lnk');$s.TargetPath='C:\Program Files (x86)\Internet Download Manager\IDMan.exe';$s.Save()"
powershell "& 'C:\Program Files (x86)\Internet Download Manager\IDMan.exe' -arguments"