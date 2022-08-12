local M={}

local function sayMyName()
    print("Hrunker")
end

function M.sayHello()
    print('Why hello there')
    sayMyName()
end

return M