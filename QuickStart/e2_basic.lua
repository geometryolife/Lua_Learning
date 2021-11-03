-- global variable
num = 100
print(num)

-- local variable
local a = 10
print(a)

-- Function definition
function sayHello() print("Hello Lua") end
sayHello()

function max(a, b)
    -- Conditional judgment
    if a > b then
        return a
    else
        return b
    end
end
print(max(5, 20))

-- For loop
for var = 1, 10 do print(var) end

--[[
>>> Execution Result:
100

10

Hello Lua

20

1
2
3
4
5
6
7
8
9
10
 ]]
