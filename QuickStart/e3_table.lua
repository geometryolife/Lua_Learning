-- create a empty table
Config = {}

-- add some member
-- attached properties 1:
Config.words = "Hello"
Config.num = 100
-- attached properties 2:
Config["name"] = "Joe"

-- print way 1:
print(Config.words, '\n')
print(Config.name, '\n')
-- print way 2:
print(Config["words"], '\n')

-- create a table and initialize
Config = {hello = "Hello Lua", words = "Today is 03 Nov 2021"}
print(Config.hello, '\n')

-- table traversal
for i, v in pairs(Config) do print(i, v) end

--[[
>>> Execution Result:
Hello

Joe

Hello

Hello Lua

words   Today is 03 Nov 2021
hello   Hello Lua
 ]]
