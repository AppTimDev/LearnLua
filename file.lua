-- simple test the io
-- Opens a file in read
file = io.open("password.lua", "r")

-- sets the default input file as password.lua
io.input(file)

-- prints the first line of the file
print(io.read())

-- closes the open file
io.close(file)