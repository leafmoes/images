@echo off
set BitComet=%~dp0
sc delete BITCOMET_HELPER_SERVICE
sc create BITCOMET_HELPER_SERVICE BinPath="%BitComet%tools\BitCometService.exe -service" DisplayName="BitComet�������ٷ���"
sc description BITCOMET_HELPER_SERVICE "�÷�����ǿ��BitComet�Ĵ���IO���ܡ�"
pause