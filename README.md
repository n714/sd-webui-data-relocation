# sd-webui-data-relocation
- Relocate stable diffusion config files and models folder, easy to shae  with mutiple webui and make the backup much easiler.
- 重新定位stable diffusion配置文件和模型文件夹，轻松与多个WebUI共享并使备份更加容易。

[stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui)

<a href="https://www.buymeacoffee.com/n714mc" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

# How to install
- Download `database.bat`and save to sd webui root folder.
- Add `call database.bat` to `webui-user.bat`
- Add the required command in set COMMANDLINE_ARGS= and need to wrap it with %%
- The example is as follows (this is the content example of `webui-user.bat`)
```
@echo off

call database.bat
set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--api --autolaunch --xformers %DIR_ARG% %CONFIG_DIR_ARG% %CN_DIR% %LYCO_DIR%

git pull
call webui.bat
```
---
## 安装方法
- 下载`database.bat`并保存到sd webui根文件夹
- 在`call webui-user.bat`中加入`call database.bat`
- 并在set COMMANDLINE_ARGS= 加入需要的命令需要以%%包覆

- 范例如下(这是`webui-user.bat`的内容范例)
 ```
@echo off

call database.bat
set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--api --autolaunch --xformers %DIR_ARG% %CONFIG_DIR_ARG% %CN_DIR% %LYCO_DIR%

git pull
call webui.bat
```
