-- Two dashes start a one-line comment.

local num = 42 -- doubles 52 bits,

local s = 'wlaternate' -- Immutable strings like Python
local t = "double-quotes are also fine"
local u = [[Double brackets 
start and end 
multi-line strings.]]
local t = nil -- lua has garbage collection.

print("u:\n" .. u)

while num < 50 do
    num = num + 1
end

if num > 40 then
    print('over 40')
elseif s ~= 'walternate' then
    io.write('not over 40\n')
else
    ThisIsGlobal = 5
    local line = io.read()
    print('Winter is coming , ' .. line)
end

Foo = anUnknownVariable

local karlSum = 0
for i = 1, 100 do
    karlSum = karlSum + i
end

local num = 10
repeat
    print('the way of the future')
    num = num - 1
until num == 0

local function fib(n)
    if n < 2 then return 1 end
    return fib(n - 2) + fib(n - 1)
end

print("fib:" .. fib(5))

local function adder(x)
    return function(y) return x + y end

end
local a1 = adder(9)
local a2 = adder(36)
print(a1(16))
print(a2(64))

local x,y,z = 1,2,3,4,5

local function bar(a, b, c)
    print(a,b,c) 
    return 4,8,15,16,23,42
end

x,y=bar('zaphod')

print("x,y : "..x.." "..y) 


print(math.sin(math.pi/4))

--- Tables
local t = { key1='value1', key2=false}
print("Tables, t")
print(t.key1)
print(t.key2)
t.key2 = nil 

print('')
for key,val in pairs(t) do
    print(key, val)
end

--- _G,
local v = {'value1', 'value2', 1.21, 'gigawatts'}
for i=1, #v do
    print(v[i])
end

--- metatable, operator overloadish behavior, 
local f1 = {a=1, b = 2}
local f2 = {a = 2, b = 3} 

local metafraction = {}
function metafraction.__add(f1,f2)
    sum = {}
    sum.b = f1.b * f2.b 
    sum.a = f1.a* f2.b + f2.a * f1.b
    return sum
end
setmetatable(f1, metafraction)
setmetatable(f2, metafraction)
local s = f1 + f2 
for key ,val in pairs(s) do
    print(key,val)
end

local defaultFavs = { animal='gru', food='donuts'}
local myFavs = {food='pizza'}
setmetatable(myFavs, {__index = defaultFavs})
print(myFavs.animal)

--- Class 

local Dog = {}

function Dog:new()
    newObj = { sound = 'woof'}
    self.__index = self
    return setmetatable(newObj, self)
end

function Dog:makeSound()
    print('I say '..self.sound)
end

local mrDog = Dog:new()
mrDog:makeSound()

local LoudDog = Dog:new()
function LoudDog:makeSound()
    s = self.sound..' ' 
    print(s..s..s)
end

local seymour = LoudDog:new()
seymour:makeSound()

function LoudDog:new()
    newObj = {}
    self.__index = self
    return setmetatable(newObj, self)
end

local mod = require('mod')
mod.sayHello()



