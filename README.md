# ArchLinx 输入法配置

本文主要介绍如何在 hyprland 中使用 fcitx-rime，其他 WM 中步骤大同小异。

## rime

**此配置是针对 `小鹤双拼` 方案的。**

| 配置文件            | 配置说明                   |
| ------------------- | -------------------------- |
| default.custom.yaml | 输入方案、候选栏、快捷键等 |
| extended.dict.yaml  | 扩展词库                   |
| flypy.schema.ymal   | 自定义小鹤双拼方案         |
| symbols.custom.yaml | 自定义标点符号             |
| custom_phrase.txt   | 自定义短语                 |

### 词库

**方案采用的是 [iDvel/rime-ice](https://github.com/iDvel/rime-ice) 的词库**

如需添加或修改词库，编辑 `extended.dict.yaml` 文件即可

```bash
import_tables:
  - dicts/8105     # 字表
  - dicts/41448    # 大字表
  - dicts/base     # 基础词库
  - dicts/ext      # 扩展词库
  - dicts/sogou    # 搜狗词向量（大词库，部署时间较长）
  - dicts/tencent  # 腾讯词向量（大词库，部署时间较长）
  - dicts/others   # 一些杂项
```

### 截图

正常输入

![](./1.png)

自定义短语

![](./2.png)

自定义符号

![](./3.png)

![](./4.png)

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

**克隆本仓库**

- 将 fcitx5 文件夹复制到 `~/.config/` 目录下
- 将 rime 和 themes 文件夹复制到 `~/.local/share/fcitx5/` 目录下

**配置环境变量**

编辑 `/etc/environment` 文件

```bash
GTK_IM_MODULE=fcitx
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

在 `hyprland.conf` 中添加下面的命令

`exec-once = fcitx5 --replace -d`

**注销或重启系统后生效**

## 参考/致谢

1.  [鼠须管配置 2021](https://placeless.net/blog/rime-squirrel-customization-2021)
2.  [我的 Rime 配置 2022](https://dvel.me/posts/my-rime-setting-2022/)
