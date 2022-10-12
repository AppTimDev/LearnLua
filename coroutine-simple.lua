co = coroutine.create(function (value1,value2)
    local count = 1
    print("coroutine section 1: ", value1, value2, "count=", count) --from 1st call

    -- value1=3, value2= 7
    local tempvar1, tempvar2 = coroutine.yield(value1+1,value2+1)  --main1 output the values of value1+1,value2+1, i.e. 4,8
    --2nd call: tempvar1, tempvar2 = 1,5

    count = count + tempvar1 --count: 2
    print("coroutine section 2: ",tempvar1 ,tempvar2, "count=", count)
     
    local tempvar1, tempvar2 = coroutine.yield(value1+2,value2+2) --main2 output the values of value1+2,value2+2, i.e. 5,9
    --3rd call: tempvar1, tempvar2 = 2,6
    count = count + tempvar1 --count: 4
    print("coroutine section 3: ",tempvar1,tempvar2, "count=", count)
    return count, "end" --main3 output 4, end
     
 end)
 
print("-- 1st call---")
print("main1:", coroutine.resume(co, 3, 7))

print("-- 2nd call---")
print("main2:", coroutine.resume(co, 1, 5))

print("-- 3rd call---")
print("main3", coroutine.resume(co, 2, 6)) 

print("-- 4th call---")
print("main4", coroutine.resume(co, 10, 20)) --main    false   cannot resume dead coroutine