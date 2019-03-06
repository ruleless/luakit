local tester = require "util.tester"

package.path = "../?.lua;" .. package.path

local object = require "object"

local tests = {}
local testeq = tester.test.equal

tests["object chain"] = function ()
    local o1 = object:new
    {
        mem = 1,
    }
    local o2 = o1:new {}
    local o3 = o2:new {}

    testeq(object.mem, nil)

    testeq(o2.mem, o1.mem)
    testeq(o3.mem, o1.mem)
end


tester.dotests(tests)
tester.test.global()
tester.printresults()
