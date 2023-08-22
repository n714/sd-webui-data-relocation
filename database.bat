@echo off

: Enter your database path file path "\" to double slash "\\" is better.
: 输入你的资料库路径档案度路径上"\"改为双斜线"\\"会更好.
: set DATABASE_DIR="X:\\AI\models"

set DATABASE_DIR="X:\\AI\models"

: Cut and paste following models folder to target folder (Stable-diffusion, vae, lora, hypernetworks, ESRGAN, LDSR, SwinIR, ScuNET, RealESRGAN, Codeformer, GFPGAN, embeddings)
: 将以下模型文件夹剪切并粘贴到目标文件夹 (Stable-diffusion, vae, lora, hypernetworks, ESRGAN, LDSR, SwinIR, ScuNET, RealESRGAN, Codeformer, GFPGAN, embeddings)

: Below are all base model folder locations: 
: 下方为所有基本模型资料夹位置

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

: Cut and paste following file from sd webui root folder to target folder (config.json, ui-config.json, styles.csv)
: 将以下文件从 sd webui 根文件夹剪切并粘贴到目标文件夹(config.json, ui-config.json, styles.csv)

: Below is the config file path (the basic configuration file is saved in config)
: 下方为config档案路径(config内保存基本设定档)

set CONFIG_DIR_ARG=--ui-settings-file %DATABASE_DIR%"\\config\\config.json"^
                   --ui-config-file %DATABASE_DIR%"\\config\\ui-config.json"^
                   --styles-file %DATABASE_DIR%"\\config\\styles.csv"

: Controlnet model path (stable-diffusion-webui\extensions\sd-webui-controlnet\models)
: Controlnet模型路径 (stable-diffusion-webui\extensions\sd-webui-controlnet\models)
set CN_DIR=--controlnet-dir %DATABASE_DIR%"\\controlnet"

: LyCORIS model path (if installed LyCORIS Extension)
: LyCORIS 模型路徑（如果安裝了 LyCORIS Extension）
: LyCORIS extension is for stable-diffusion-webui < 1.5.0.
set LYCO_DIR=--lyco-dir %DATABASE_DIR%"\\LyCORIS"
