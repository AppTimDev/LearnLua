function GeneratePassword(str)
    -- convert each characters of a string to its ascii number
    -- concat all the ascii number into a string
    local size = string.len(str)
    local ans = ""
    --ans = ""
    for i=1,size do
        local b=string.byte(str,i)
        ans = ans..b
        --print(ans)
    end
    return ans
end
 
-- main function
password = GeneratePassword("abc")
print(password)
print(type(password))

