@echo off
cls
title Alterar Nome do Computador

:: Tela Inicial do programa
cls
echo ======================================================
echo +          Trocar Hostname             0.0.1v        +
echo ======================================================
echo Ola, %username% ! 
echo Atualmente o nome do computador e: %computername%
echo ======================================================
echo Deseja Trocar ? 
set /p escolha=1- Sim 2- Nao 

:: Condicional do Menu
if %escolha%==1 goto opcao1
if %escolha%==2 goto opcao2

::Função para realizar a troca de nome do computador
:opcao1
    cls
    echo ======================================================
    echo +          Trocar Hostname             0.0.1v        +
    echo ======================================================  
    echo Nome Atual: %computername%
    echo ======================================================  
    set /p novoHostname=Digite o novo nome:
    goto:menuAlterarHostname

::Opção que finaliza o Script
:opcao2
    cls
    echo Até mais, %username% !
    pause
    exit

::Menu Altera o nome do computador
:menuAlterarHostname
    cls
    echo ======================================================
    echo +          Trocar Hostname             0.0.1v        +
    echo ======================================================  
    echo Nome Atual: %computername% Novo Nome: %novoHostname%
    echo ======================================================  
    set /p opcao=Confirma ? 1- Sim 2- Renomear 3- Voltar 
    
    if %opcao%==1 goto:alterarHostname
    if %opcao%==2 goto:opcao1
    if %opcao%==3 goto:menu
    
::Altera o HostName
:alterarHostname 
    wmic computersystem where name="%computername%" call rename name="%novoHostname%"
    pause
    goto:reinializarWindows

:reinializarWindows
    echo Vamos reinciar o computador %username%
    pause
    shutdown /r /t 0

