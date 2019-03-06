local tester = require "util.tester"

package.path = "../?.lua;" .. package.path

local class = require "class"

local tests = {}
local testeq = tester.test.equal

-- Base class
local Base = class()

function Base:ctor(a, b)
    self.a_ = a
    self.b_ = b
end

function Base:print()
    print("this is a Base Object")
    print(string.format("a_: %d, b_: %d", self.a_, self.b_))
end

-- Child class inherit from Base
local Child = class(Base)

function Child:ctor()
end

function Child:print()
    print("this is a Child Object")
    print(string.format("a_: %d, b_: %d", self.a_, self.b_))
end

-- test class
tests["class"] = function()
    local b1 = Base.new(1, 2)
    testeq(b1.a_, 1)
    testeq(b1.b_, 2)

    local c1 = Child.new(3, 4)
    testeq(c1.a_, 3)
    testeq(c1.b_, 4)
end


tester.dotests(tests)
tester.test.global()
tester.printresults()
