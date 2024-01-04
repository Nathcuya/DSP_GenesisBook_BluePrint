@echo off
setlocal EnableDelayedExpansion

REM 设置本地项目路径和 GitHub 仓库地址
set "localPath=C:\Users\Nathcuya Alexander\Documents\Dyson Sphere Program\Blueprint\DSPGenesisBook"
set "githubRepo=https://github.com/Nathcuya/DSP_GenesisBook_BluePrint"

REM 删除旧的本地仓库文件夹
rmdir /s /q "!localPath!" 2>nul

REM 克隆 GitHub 仓库到本地
git clone "!githubRepo!" "!localPath!"

REM 进入本地仓库目录
cd "!localPath!"

REM 获取最新版本
git pull

REM 复制或替换文件到目标目录
xcopy /y /s "C:\Users\Nathcuya Alexander\Documents\Dyson Sphere Program\Blueprint"

echo Update complete!
exit /b 0
