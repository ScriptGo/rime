# ArchLinx 输入法配置

**本文主要介绍如何在 hyprland 中使用 fcitx5-rime，其他桌面环境或 WM 中步骤大同小异。**

| 文件                | 说明                       |
| ------------------- | -------------------------- |
| default.custom.yaml | 输入方案、候选栏、快捷键等 |
| extended.dict.yaml  | 扩展词库                   |
| flypy.schema.ymal   | 小鹤双拼                   |
| symbols.custom.yaml | 表情、标点符号             |
| custom_phrase.txt   | 自定义短语                 |

**此配置仅适用于 `小鹤双拼` ，如有需要请自行修改！ 词库取自 [iDvel/rime-ice](https://github.com/iDvel/rime-ice)**。

## 安装

1.安装 fcitx5 框架

```bash
sudo pacman -S fcitx5-im
```

2.安装 rime 和双拼方案

```bash
sudo pacman -S fcitx5-rime rime-double-pinyin
```

## 配置

**1.克隆本仓库**

- 将 fcitx5 复制到 `~/.config/` 目录
- 将 rime 和 themes 复制到 `~/.local/share/fcitx5/` 目录

**2.配置环境变量**

编辑 `/etc/environment` 文件

```bash
QT_IM_MODULE=fcitx
SDL_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
```

## 美化

`themes` 文件夹内包含了主题

修改配置文件

`~/.config/fcitx5/conf/classicui.conf`

添加主题名称即可

`Theme=Gruvbox-Dark`

## 启用 fcitx

在 `hyprland.lua` 中添加如下面的命令

```lua
hl.on("hyprland.start", function ()
    hl.exec_cmd("fcitx5 -d")
end)
```

**注销或重启系统后生效**

## 参考/致谢

1. [鼠须管配置 2021](https://placeless.net/blog/rime-squirrel-customization-2021)
2. [我的 Rime 配置 2022](https://dvel.me/posts/my-rime-setting-2022/)
3. [Gruvbox](https://github.com/ayamir/fcitx5-gruvbox)
4. [Nord](https://github.com/ayamir/fcitx5-nord)
5. [Mintimate](https://github.com/Mintimate/oh-my-rime)
