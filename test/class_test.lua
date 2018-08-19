print "begin testing 'class' ..."

Base = class()

function Base:ctor(a, b)
    self.a_ = a
    self.b_ = b
end

function Base:print()
    print("this is a Base Object")
    print(string.format("a_: %d, b_: %d", self.a_, self.b_))
end

Child = class(Base)

function Child:ctor()
end

function Child:print()
    print("this is a Child Object")
    print(string.format("a_: %d, b_: %d", self.a_, self.b_))
end

b1 = Base.new(1, 2)
b1:print()

c1 = Child.new(3, 4)
c1:print()

print "end testing 'class'"
