local lu = require("__shared/luaunit")

VextTestVec2 = {}

function VextTestVec2:testProperties()
    local s_Vec2 = Vec2(1.0, 2.0)

    lu.assertEquals(s_Vec2.x, 1.0)
    lu.assertEquals(s_Vec2.y, 2.0)
end

function VextTestVec2:testStaticProperties()
    lu.assertEquals(Vec2.down, Vec2(0.0, -1.0))
    lu.assertEquals(Vec2.left, Vec2(-1.0, 0.0))
    lu.assertEquals(Vec2.negativeInfinity, Vec2(-1.0 / 0.0, -1.0 / 0.0))
    lu.assertEquals(Vec2.one, Vec2(1.0, 1.0))
    lu.assertEquals(Vec2.positiveInfinity, Vec2(1.0 / 0.0, 1.0 / 0.0))
    lu.assertEquals(Vec2.right, Vec2(1.0, 0.0))
    lu.assertEquals(Vec2.up, Vec2(0.0, 1.0))
    lu.assertEquals(Vec2.zero, Vec2(0.0, 0.0))
end

function VextTestVec2:testLessThen()
    local s_First = Vec2(1.0, 2.0)
    local s_Second = Vec2(3.0, 4.0)

    lu.assertTrue(s_First < s_Second)
end

function VextTestVec2:testLessThenOrEqual()
    local s_First = Vec2(1.0, 2.0)
    local s_Second = Vec2(3.0, 4.0)

    lu.assertTrue(s_First <= s_Second)
end

function VextTestVec2:testAddOtherVec2()
    local s_First = Vec2(1.0, 2.0)
    local s_Second = Vec2(3.0, 4.0)

    local s_Result = s_First + s_Second

    lu.assertEquals(s_Result.x, 4.0)
    lu.assertEquals(s_Result.y, 6.0)
end

function VextTestVec2:testSubtractOtherVec2()
    local s_First = Vec2(1.0, 2.0)
    local s_Second = Vec2(3.0, 4.0)

    local s_Result = s_First - s_Second

    lu.assertEquals(s_Result.x, -2.0)
    lu.assertEquals(s_Result.y, -2.0)
end

function VextTestVec2:testMultiplyOtherVec2()
    local s_First = Vec2(1.0, 2.0)
    local s_Second = Vec2(3.0, 4.0)

    local s_Result = s_First * s_Second

    lu.assertEquals(s_Result.x, 3.0)
    lu.assertEquals(s_Result.y, 8.0)
end

function VextTestVec2:testMultiplyFloat()
    local s_First = Vec2(1.0, 2.0)
    local s_Second = 3.0

    local s_Result = s_First * s_Second

    lu.assertEquals(s_Result.x, 3.0)
    lu.assertEquals(s_Result.y, 6.0)
end

function VextTestVec2:testDivideOtherVec2()
    local s_First = Vec2(1.0, 2.0)
    local s_Second = Vec2(3.0, 4.0)

    local s_Result = s_First / s_Second

    lu.assertAlmostEquals(s_Result.x, 1.0 / 3.0, 0.1)
    lu.assertAlmostEquals(s_Result.y, 2.0 / 4.0, 0.1)
end

function VextTestVec2:testDivideFloat()
    local s_First = Vec2(1.0, 2.0)
    local s_Second = 3.0

    local s_Result = s_First / s_Second

    lu.assertAlmostEquals(s_Result.x, 1.0 / 3.0, 0.1)
    lu.assertAlmostEquals(s_Result.y, 2.0 / 3.0, 0.1)
end

function VextTestVec2:testDistanceOtherVec2()
    local s_First = Vec2(1.0, 2.0)
    local s_Second = Vec2(3.0, 4.0)

    local s_Result = s_First:Distance(s_Second)

    lu.assertAlmostEquals(s_Result, 2.8284270763397, 0.1)
end

function VextTestVec2:testMagnitude()
    local s_Vec2 = Vec2(1.0, 2.0)

    lu.assertAlmostEquals(s_Vec2.magnitude, 2.2360680103302, 0.1)
end

function VextTestVec2:testEquals()
    local s_First = Vec2(1.0, 2.0)
    local s_Second = Vec2(1.0, 2.0)

    lu.assertTrue(s_First == s_Second)
end

function VextTestVec2:testToString()
    local s_Vec2 = Vec2(1.0, 2.0)

    lu.assertEquals(tostring(s_Vec2), "(1.000000, 2.000000)")
end
