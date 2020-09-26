@echo off
set BitComet=%~dp0
sc delete BITCOMET_HELPER_SERVICE
sc create BITCOMET_HELPER_SERVICE BinPath="%BitComet%tools\BitCometService.exe -service" DisplayName="BitComet磁盘提速服务"
sc description BITCOMET_HELPER_SERVICE "该服务增强了BitComet的磁盘IO性能。"
pause