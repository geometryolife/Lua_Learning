-- Lua 的时间处理函数主要有：time 和 date 两个。time 函数主要是返回一个时间戳，
-- 用于描述当前时间距离 1970-01-01 的秒数；date 和 time 相对应，用于将一个时间
-- 戳格式化为可方便使用的时间对象 table。
--
-- time 函数主要用于获取一个时间戳，该时间戳既可以描述日期，也可以描述时间。
-- 该函数提供两种调用方式，第一种，不传递参数，默认调用时，返回当前时间戳；
-- 第二种，传递一个 table 类型的参数，指定明确的日期或时间，返回指定的时间戳。
-- os.time()
-- os.time({})
print(os.time())
-- 1641570035
print(os.time({year = 2022, month = 01, day = 07}))
-- 1641528000
print(os.time({year = 2022, month = 01, day = 07, hour = 23, min = 08}))
-- 1641568080

-- 第二种调用方式，支持的参数字段参见下表
-- 在第二种参数中，year，month，day 三个字段是必备的，后面缺省时表示 12:00:00。
-- | 字段名 | 描述                   |
-- | year   | 必备，完整的年份，数字 |
-- | month  | 必备，月份，01~12      |
-- | day    | 必备，月内的日，01~31  |
-- | hour   | 小时，00~23            |
-- | min    | 分钟，00~59            |
-- | sec    | 秒，00~59              |
-- | isdst  | 布尔，true-夏令        |
