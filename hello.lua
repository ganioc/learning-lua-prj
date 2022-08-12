

print("hello world")

local five=5
print(five);
print(string.len("hello"))
print(#"hello")

function PrintSomething()
    print("Something ".."go out.")
end

PrintSomething()

for i=10,2,-1 do
    print "N"
end

print(type({}))

local tbl={}
tbl[1]='a' 
tbl[2]='b'
print(tbl[2])
print(tbl[1])
print(tbl[0])

local days={ "monday", "tuesday", "wednesday"}

for i,j  in pairs(days) do
    print(j)
end

print(os.clock())
print(os.date())




