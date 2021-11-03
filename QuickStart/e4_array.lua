-- define a array
arr = {1, 2, 3, 4, 'Hello'}

-- Important difference:
-- The index starts at 1 instead of 0.
for i, v in pairs(arr) do print(i, v) end

print()

arr1 = {}
arr2 = {}

-- queue
for i = 1, 10 do table.insert(arr1, i) end
for i, v in pairs(arr1) do print(i, v) end

print()

-- stack
for i = 1, 10 do table.insert(arr2, 1, i) end
for i, v in pairs(arr2) do print(i, v) end

print()

-- gets the maximum index
-- deprecated
-- print(table.maxn(arr2))

-- calculate length or maximum index
print(#arr1)

--[[
>>> Execution Result:
1       1
2       2
3       3
4       4
5       Hello

1       1
2       2
3       3
4       4
5       5
6       6
7       7
8       8
9       9
10      10

1       10
2       9
3       8
4       7
5       6
6       5
7       4
8       3
9       2
10      1

10
 ]]
