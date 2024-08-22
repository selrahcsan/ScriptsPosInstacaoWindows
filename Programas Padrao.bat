@echo off
cls
title Instalacao Automatizada
cls

:: Tela Inicial do programa
echo ======================================================
echo +          Instalacao Automatizada     0.0.1v        +
echo ======================================================
echo +                                                    +
echo +    Verificando se o Winget está instalado          +
echo +                                                    +
echo ======================================================
echo Usuario: %username% Hostname: %computername%
echo Dominio: %userdomain%
echo ======================================================


:: Menu de Escolha da Instalação
:menu
    cls
    echo ======================================================
    echo +          Instalacao Automatizada     0.0.1v        +
    echo ======================================================
    echo +                                                    +
    echo +   1 - Instacao Programas Padrao x32                +
    echo +   2 - Instacao Programas Padrao x64                +
    echo +   3 - Sair                                         +
    echo +                                                    +
    echo ======================================================
    echo Usuario: %username% Hostname: %computername%
    echo Dominio: %userdomain%
    echo ====================================================== 
    set /p escolha=Escolha uma opcao :


:: Condicional das escolhas do menu
if %escolha%==1 goto opcao1
if %escolha%==2 goto opcao2
if %escolha%==3 goto opcao3
goto menu

:: Opcao 1 -> Instalação de Programas com o Windows 32
:opcao1
    cls
    echo ======================================================
    echo +          Instalacao Automatizada     0.0.1v        +
    echo ======================================================
    echo Usuario: %username% Hostname: %computername%
    echo Dominio: %userdomain%
    echo ====================================================== 
    echo Instalando Programas Padrao x32...
    pause
    winget update
    winget install Adobe.Acrobat.Reader.32-bit CodecGuide.K-LiteCodecPack.Full 
    pause
goto menu

:: Opcao 2 -> Instalação de Programas com o Windows 64
:opcao2
    cls
    echo ======================================================
    echo +          Instalacao Automatizada     0.0.1v        +
    echo ======================================================
    echo Usuario: %username% Hostname: %computername%
    echo Dominio: %userdomain%
    echo ====================================================== 
    echo Instalando Programas Padrao x64...
    winget update
    winget install Oracle.JavaRuntimeEnvironment Mozilla.Firefox Google.Chrome.EXE Adobe.Acrobat.Reader.64-bit RARLab.WinRAR CodecGuide.K-LiteCodecPack.Full --silent 
    pause
goto menu

:: Finaliza o Script
:opcao3
    cls
    echo Obrigado %username% por Usar esse script.
    echo Acesse https://github.com/selrahcsan/ScriptsPosInstacaoWindows para deixar seu Feedback.
    pause
    exit