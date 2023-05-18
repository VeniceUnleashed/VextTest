local lu = require("__shared/luaunit")

VextTestVec3 = {}

function VextTestVec3:testProperties()
    local s_Vec3 = Vec3(1.0, 2.0, 3.0)

    lu.assertEquals(s_Vec3.x, 1.0)
    lu.assertEquals(s_Vec3.y, 2.0)
    lu.assertEquals(s_Vec3.z, 3.0)
end

function VextTestVec3:testAddOtherVec3()
    local s_First = Vec3(1.0, 2.0, 3.0)
    local s_Second = Vec3(4.0, 5.0, 6.0)

    local s_Result = s_First + s_Second

    lu.assertEquals(s_Result.x, 5.0)
    lu.assertEquals(s_Result.y, 7.0)
    lu.assertEquals(s_Result.z, 9.0)
end

function VextTestVec3:testSubtractOtherVec3()
    local s_First = Vec3(1.0, 2.0, 3.0)
    local s_Second = Vec3(4.0, 5.0, 6.0)

    local s_Result = s_First - s_Second

    lu.assertEquals(s_Result.x, -3.0)
    lu.assertEquals(s_Result.y, -3.0)
    lu.assertEquals(s_Result.z, -3.0)
end

function VextTestVec3:testMultiplyOtherVec3()
    local s_First = Vec3(1.0, 2.0, 3.0)
    local s_Second = Vec3(4.0, 5.0, 6.0)

    local s_Result = s_First * s_Second

    lu.assertEquals(s_Result.x, 4.0)
    lu.assertEquals(s_Result.y, 10.0)
    lu.assertEquals(s_Result.z, 18.0)
end

function VextTestVec3:testMultiplyFloat()
    local s_First = Vec3(1.0, 2.0, 3.0)
    local s_Second = 4.0

    local s_Result = s_First * s_Second

    lu.assertEquals(s_Result.x, 4.0)
    lu.assertEquals(s_Result.y, 8.0)
    lu.assertEquals(s_Result.z, 12.0)
end

function VextTestVec3:testDivideOtherVec3()
    local s_First = Vec3(1.0, 2.0, 3.0)
    local s_Second = Vec3(4.0, 5.0, 6.0)

    local s_Result = s_First / s_Second

    lu.assertAlmostEquals(s_Result.x, 1.0 / 4.0, 0.1)
    lu.assertAlmostEquals(s_Result.y, 2.0 / 5.0, 0.1)
    lu.assertAlmostEquals(s_Result.z, 3.0 / 6.0, 0.1)
end

function VextTestVec3:testDivideFloat()
    local s_First = Vec3(1.0, 2.0, 3.0)
    local s_Second = 4.0

    local s_Result = s_First / s_Second

    lu.assertAlmostEquals(s_Result.x, 1.0 / 4.0, 0.1)
    lu.assertAlmostEquals(s_Result.y, 2.0 / 4.0, 0.1)
    lu.assertAlmostEquals(s_Result.z, 3.0 / 4.0, 0.1)
end

function VextTestVec3:testDotOtherVec3()
    local s_First = Vec3(1.0, 2.0, 3.0)
    local s_Second = Vec3(4.0, 5.0, 6.0)

    local s_Result = s_First:Dot(s_Second)

    lu.assertEquals(s_Result, 32.0)
end

function VextTestVec3:testCrossOtherVec3()
    local s_First = Vec3(1.0, 2.0, 3.0)
    local s_Second = Vec3(4.0, 5.0, 6.0)

    local s_Result = s_First:Cross(s_Second)

    lu.assertEquals(s_Result.x, -3.0)
    lu.assertEquals(s_Result.y, 6.0)
    lu.assertEquals(s_Result.z, -3.0)
end

function VextTestVec3:testNormalize()
    local s_Vec3 = Vec3(1.0, 2.0, 3.0)

    local s_Result = s_Vec3:Normalize()

    lu.assertAlmostEquals(s_Result.x, 1.0 / math.sqrt(14.0), 0.1)
    lu.assertAlmostEquals(s_Result.y, 2.0 / math.sqrt(14.0), 0.1)
    lu.assertAlmostEquals(s_Result.z, 3.0 / math.sqrt(14.0), 0.1)
end

function VextTestVec3:testDistanceToOtherVec3()
    local s_First = Vec3(1.0, 2.0, 3.0)
    local s_Second = Vec3(4.0, 5.0, 6.0)

    local s_Result = s_First:Distance(s_Second)

    lu.assertAlmostEquals(s_Result, math.sqrt(27.0), 0.1)
end

function VextTestVec3:testEquals()
    local s_First = Vec3(1.0, 2.0, 3.0)
    local s_Second = Vec3(1.0, 2.0, 3.0)

    lu.assertTrue(s_First == s_Second)
end

function VextTestVec3:testToString()
    local s_Vec3 = Vec3(1.0, 2.0, 3.0)

    lu.assertEquals(tostring(s_Vec3), "(1.000000, 2.000000, 3.000000)")
end
