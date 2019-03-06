local tester = require "util.tester"

package.path = "../?.lua;" .. package.path

local lume = require "lume"
local luakit = require "luakit"

local tests = {}
local testeq = tester.test.equal

-- serialize
tests["lume.serialize"] = function()
    testeq(type(lume.serialize({s = "string", n = 10})), "string")

    testeq(lume.serialize(true), "true")
    testeq(lume.serialize(false), "false")
    testeq(lume.serialize(10), "10")
    testeq(lume.serialize("10"), "\"10\"")

    local t = {s = "string", n = 10}
    testeq(t, lume.deserialize(lume.serialize(t)))

    t = {1, 2, 3, 4, 5}
    testeq(t, lume.deserialize(lume.serialize(t)))

    t = {1, 2, 3, 4, 5, kkk="xxx"}
    testeq(t, lume.deserialize(lume.serialize(t)))
end


tester.dotests(tests)
tester.test.global()
tester.printresults()
