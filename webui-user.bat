@echo off

call database.bat
set PYTHON=
set GIT=
set VENV_DIR=

set COMMANDLINE_ARGS= --api --medvram --autolaunch --xformers %DIR_ARG% %CONFIG_DIR_ARG% %CN_DIR%
git pull

call webui.bat
