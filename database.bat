@echo off

: 輸入你的資料庫路徑檔案度路徑上"\"改為雙斜線"\\"較優

  set DATABASE_DIR="R:\\AI"
: set DATABASE_DIR="\\Server\Resource\AI\models"

: 下方為所有基本模型資料夾位置

set DIR_ARG=--ckpt-dir %DATABASE_DIR%"\\Stable-diffusion"^
	    --vae-dir %DATABASE_DIR%"\\vae"^
	    --lora-dir %DATABASE_DIR%"\\lora"^
	    --embeddings-dir %DATABASE_DIR%"\\embeddings"^
	    --hypernetwork-dir %DATABASE_DIR%"\\hypernetworks"^
	    --esrgan-models-path %DATABASE_DIR%"\\ESRGAN"^
	    --ldsr-models-path %DATABASE_DIR%"\\LDSR"^
	    --swinir-models-path %DATABASE_DIR%"\\SwinIR"^
	    --scunet-models-path %DATABASE_DIR%"\\ScuNET"^
	    --realesrgan-models-path %DATABASE_DIR%"\\RealESRGAN"^
	    --codeformer-models-path %DATABASE_DIR%"\\Codeformer"^
	    --gfpgan-models-path %DATABASE_DIR%"\\GFPGAN"

: 下方為config檔案路徑(config內保存基本設定檔)

set CONFIG_DIR_ARG=--ui-settings-file %DATABASE_DIR%"\\config\\config.json"^
                   --ui-config-file %DATABASE_DIR%"\\config\\ui-config.json"^
                   --styles-file %DATABASE_DIR%"\\config\\styles.csv"



: 常用擴充

: controlnet模型路徑
set CN_DIR=--controlnet-dir %DATABASE_DIR%"\\controlnet"

: LyCORIS模型路徑(如果有使用LyCORIS擴充)
set LYCO_DIR=--lyco-dir %DATABASE_DIR%"\\LyCORIS"

:使用說明
:在webui-user.bat中加入call database.bat
:並在set COMMANDLINE_ARGS= 加入需要的命令需要以%%包覆

:範例如下(這是webui-user的內容範例)

:@echo off

:call database.bat
:set PYTHON=
:set GIT=
:set VENV_DIR=
:set COMMANDLINE_ARGS=--no-half-vae --xformers --opt-sdp-no-mem-attention --opt-sdp-attention %DIR_ARG%  %CONFIG_DIR_ARG% %CN_DIR%
:call webui.bat




