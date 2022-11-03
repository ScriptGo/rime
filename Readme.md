# Manjaro下 Rime配置

## 安装rime

   ```bash
   sudo pacman -S fcitx5-rime
   ```


## 安装方案及词库

   ```bash
   sudo pacman -S rime-double-pinyin
   sudo pacman -S fcitx5-pinyin-zhwiki-rime
   sudo pacman -S fcitx5-pinyin-moegirl-rime
   ```


## 配置文件路径

   1. `~/.config/fcitx5`
   2. `~/.local/share/fcitx5/rime`


## 配置文件说明

| 配置文件             | 配置说明                             |
| -------------------- | ----------------------------------|
| default.custom.yaml  | 输入方案、候选栏、快捷键等             |
| extended.dict.yaml   | 扩展词库                           |
| flypy.schema.ymal    | 自定义小鹤双拼方案                    |
| symbols.custom.yaml  | 标点符号                           |
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

   
