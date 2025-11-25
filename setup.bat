@echo off
echo ==============================================
echo   CONFIGURANDO AMBIENTE ROBOT FRAMEWORK
echo ==============================================

REM 1. Verifica Python
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo ERRO: Python nao encontrado. Instale Python 3.11 antes de continuar.
    pause
    exit /b
)

echo Python encontrado.

REM 2. Criar ambiente virtual
echo Criando ambiente virtual robot-env...
python -m venv robot-env

REM 3. Ativar ambiente virtual
call robot-env\Scripts\activate.bat

REM 4. Atualizar pip
echo Atualizando pip...
pip install --upgrade pip

REM 5. Instalar Robot Framework
echo Instalando Robot Framework...
pip install robotframework

REM 6. Instalar RequestsLibrary
echo Instalando RequestsLibrary...
pip install robotframework-requests
pip install requests

echo ==============================================
echo   INSTALACAO FINALIZADA COM SUCESSO!
echo ==============================================
echo Ambiente criado: robot-env
echo Para ativar manualmente depois use:
echo     robot-env\Scripts\activate
echo ==============================================
pause