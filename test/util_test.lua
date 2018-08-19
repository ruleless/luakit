local t1 = {
    s = "string",
    n = 10
}

local t2 = {
    s = "string",
    n = 10,
    t1 = t1
}

print(string.format("t1 = %s", tableToString(t1)))
print(string.format("t2 = %s", tableToString(t2)))
