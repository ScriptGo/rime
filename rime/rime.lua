-- Rime Lua 扩展 https://github.com/hchunhui/librime-lua
-- 文档 https://github.com/hchunhui/librime-lua/wiki/Scripting

-- translators:

-- 日期时间，可在方案中配置触发关键字。
date_translator = require("date_translator")

-- 农历，可在方案中配置触发关键字。
lunar = require("lunar")

-- Unicode，U 开头
unicode = require("unicode")

-- 数字、人民币大写，R 开头
number_translator = require("number_translator")

-- filters:

-- 长词优先（全拼）
long_word_filter = require("long_word_filter")
