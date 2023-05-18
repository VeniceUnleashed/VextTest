local lu = require("__shared/luaunit")

-- All tests here
require("__shared/Types/GuidTests")
require("__shared/Types/Vec2Tests")
require("__shared/Types/Vec3Tests")
require("__shared/Types/Vec4Tests")

lu.LuaUnit.run()
