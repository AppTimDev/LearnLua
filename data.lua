-- table

-- arrays are implemented using indexing tables with integers.
fruits = {"banana","orange","apple","grapes"}
for k,v in ipairs(fruits) do
   print(k,v) -- type of key is number
end

-- use table to create 2d-matrix
matrix = {}
local maxRow, maxCol = 3, 4
for i = 1, maxRow do
    matrix[i] = {}
    for j =1,maxCol do
        matrix[i][j] = maxCol*(i-1)+j
    end
end
for i =1, maxRow do
    for j =1,maxCol do
        --print(matrix[i][j])
        io.write(matrix[i][j], ' ')
    end
    io.write("\n")
end

-- use table as dictionary
dict = {}
dict["a"] = "apple"
dict["b"] = "banana"
for k,v in pairs(dict) do
    --print(type(k)) -- type of key is string
    print(k,v)
end