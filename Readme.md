# Manjaro 输入法配置(fcitx5-rime)


## 安装

1. 安装fcitx5框架

```bash
sudo pacman -S fcitx5-im
```

2. 安装rime和双拼方案

```bash
sudo pacman -S fcitx5-rime rime-double-pinyin
```

3. 安装rime词库

```bash
sudo pacman -S fcitx5-pinyin-moegirl-rime
```


## 配置

1. 确认系统显示服务器

    使用 `echo ${XDG_SESSION_TYPE} ` 命令查看显示服务器是 `x11`,  还是 `wayland`

1.1 如果显示服务器是 `x11`, 则编辑 ` ~/.xprofile ` 文件

```bash
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
```

1.2 如果显示服务器是`wayland` , 则编辑 `~/.pam_environment` 文件

```bash
GTK_IM_MODULE=fcitx5
QT_IM_MODULE=fcitx5
XMODIFIERS=@im=fcitx5
```

2. 配置

- 将 `i3 repo` 中的 `fcitx5` 文件夹复制到`~/.config/` 目录下
- 将 `本repo` 复制到 `~/.local/share/fcitx5/` 目录下

3. 美化

去Github下载以下主题

```bash
https://github.com/ayamir/fcitx5-nord
https://github.com/ayamir/fcitx5-gruvbox
```

将其复制到 `~/.local/share/fcitx5/themes/` 目录, 然后修改配置文件 `~/.config/fcitx5/conf/classicui.conf`

```bash
Theme=Gruvbox-Dark                       # 主题
```

**注意：修改配置文件 ~/.config/fcitx5/profile 时，请务必退出 fcitx5 输入法，
否则会因为输入法退出时会覆盖配置文件导致之前的修改被覆盖；修改其他配置文件可以不用退出 fcitx5 输入法.**

重启后生效


## rime

| 配置文件             | 配置说明                             |
| -------------------- | ----------------------------------|
| default.custom.yaml  | 输入方案、候选栏、快捷键等             |
| extended.dict.yaml   | 扩展词库                           |
| flypy.schema.ymal    | 自定义小鹤双拼方案                    |
| symbols.custom.yaml  | 自定义标点符号                           |
| custom_phrase.txt    | 自定义短语                           |


## 参考/致谢

   1. [鼠须管配置 2019](https://placeless.net/blog/rime-squirrel-customization-2019#article)
   2. [好用好看好玩的输入法 —— 鼠须管配置使用](https://blog.isteed.cc/post/squirrel-customization-2022/)
   3. [鼠须管配置 2019](https://placeless.net/blog/rime-squirrel-customization-2019#article)
   4. [鼠须管 0.11 Mac 升级重装配置 2019](https://github.com/cnfeat/Rime)
   5. [Rime 鼠须管输入法傻瓜式配置指南](https://github.com/wongdean/rime-settings)
   6. [Rime Squirrel 鼠须管输入法配置详解](https://ssnhd.com/2022/01/06/rime/)
   7. [鼠须管配置 2021](https://placeless.net/blog/rime-squirrel-customization-2021)
   8. [我的 Rime 配置 2022](https://dvel.me/posts/my-rime-setting-2022/)

   
