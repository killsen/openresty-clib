# 通过 MSYS2 编译 OpenResty

## 相关链接

* [MSYS2使用教程](https://www.cnblogs.com/CodeWorkerLiMing/p/12274583.html)
* [Pacman 软件包管理器](https://wiki.archlinux.org/title/Pacman_(简体中文))
* [msys2软件包管理工具pacman常用命令](https://blog.csdn.net/hustlei/article/details/86687621)
* [清华大学开源软件镜像站](https://mirrors.tuna.tsinghua.edu.cn/msys2/)
* [Fixes to build v2.3.0 on Windows with MinGW-w64](https://github.com/libgd/libgd/issues/611)

## 安装 MSYS2

```PowerShell

# 通过 Scoop 安装 MSYS2
scoop install msys2

# 编辑镜像配置文件, 首选清华大学开源软件镜像站
code D:/scoop/apps/msys2/current/etc/pacman.d/

# 修改 mirrorlist.* 文件
# 找到 mirrors.tuna.tsinghua.edu.cn 所在行
# 将其复制或剪切到最上面并保存

# 进入 MinGW32
# mingw32

# 进入 MinGW64
mingw64

```

## 在 MinGW64 或 MinGW32 中执行以下脚本

```sh
# 升级软件包
pacman -Syu

# 安装基本开发包
pacman -S base-devel

# 安装 32 位工具链
pacman -S mingw-w64-i686-toolchain

# 安装 64 位工具链
pacman -S mingw-w64-x86_64-toolchain
```

## 编译 OpenResty

```sh
# 下载 openssl zlib pcre
wget https://www.openssl.org/source/openssl-1.1.1p.tar.gz
wget http://zlib.net/zlib-1.2.13.tar.gz
wget https://sourceforge.net/projects/pcre/files/pcre/8.44/pcre-8.44.tar.gz

# 下载 openresty
wget https://openresty.org/download/openresty-1.19.9.1.tar.gz
tar -xf openresty-1.19.9.1.tar.gz
cd openresty-1.19.9.1

# 修改 pcre zlib openssl 版本与下载的版本保持一致
code ./util/build-win32.sh
# PCRE=pcre-8.44
# ZLIB=zlib-1.2.13
# OPENSSL=openssl-1.1.1p

# 编译 OpenResty
bash ./util/build-win32.sh
```
