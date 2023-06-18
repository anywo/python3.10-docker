FROM python:3.10

# 参考: https://blog.csdn.net/struct_slllp_main/article/details/112620111
#设置环境为非交互模式，否则在安装某个库时需要选择配置
ENV DEBIAN_FRONTEND=noninteractive
 
#安装依赖包
RUN apt-get update && apt-get install -y libxcb-keysyms1-dev libxcb-image0-dev \
    libxcb-shm0-dev libxcb-icccm4-dev libxcb-sync0-dev libxcb-xfixes0-dev \
    libxcb-shape0-dev libxcb-randr0-dev libxcb-render-util0-dev \
    libfontconfig1-dev libfreetype6-dev libx11-dev libxext-dev libxfixes-dev \
    libxi-dev libxrender-dev libxcb1-dev libx11-xcb-dev libxcb-glx0-dev x11vnc \
    xauth build-essential mesa-common-dev libglu1-mesa-dev libxkbcommon-dev \
    libxcb-xkb-dev libxslt1-dev libxkbcommon-x11-0

RUN apt update && apt install libgl1-mesa-glx libxcb-xinerama0 libxcb-util1 -y