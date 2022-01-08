-- clock 函数主要是获取 CPU 时间的秒数，一般用于计算一段代码的执行时间，
-- 往往是开始执行，在结束时再执行一次，获取两个数值进行相减操作，
-- 得到的数值就是代码端的执行时间。当程序运行时，CPU 时钟开始计数，
-- clock 获取的是代码当前点的时钟，如果不在程序开头，不是从 0 开始的，
-- 而是执行到当前位置时，CPU 的计数数值。
print(os.time())
-- 1641651523
print("hello lua")
-- hello lua

local start = os.clock() -- 从程序执行到此为止，开始记录 CPU 时钟

-- 模拟耗时操作，计算该程序段的耗时情况
local s = 0
for i = 1, 10000000 do s = s + i end

print(s)
-- 50000005000000

local endClock = os.clock() -- 再次记录 CPU 时钟

print(string.format("开始计算：%.4f", start))
print(string.format("结束计算：%.4f", endClock))
print(string.format("运行耗时:%.4f", endClock - start))

-- >>> Execution Result:
-- 1641651523
-- hello lua
-- 50000005000000
-- 开始计算：0.0018
-- 结束计算：0.0576
-- 运行耗时:0.0558
