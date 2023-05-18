local lu = require("__shared/luaunit")

VextTestVec4 = {}

function VextTestVec4:testProperties()
    local s_Vec4 = Vec4(1.0, 2.0, 3.0, 4.0)

    lu.assertEquals(s_Vec4.x, 1.0)
    lu.assertEquals(s_Vec4.y, 2.0)
    lu.assertEquals(s_Vec4.z, 3.0)
    lu.assertEquals(s_Vec4.w, 4.0)
end

function VextTestVec4:testAddOtherVec4()
    local s_First = Vec4(1.0, 2.0, 3.0, 4.0)
    local s_Second = Vec4(5.0, 6.0, 7.0, 8.0)

    local s_Result = s_First + s_Second

    lu.assertEquals(s_Result.x, 6.0)
    lu.assertEquals(s_Result.y, 8.0)
    lu.assertEquals(s_Result.z, 10.0)
    lu.assertEquals(s_Result.w, 12.0)
end

function VextTestVec4:testSubtractOtherVec4()
    local s_First = Vec4(1.0, 2.0, 3.0, 4.0)
    local s_Second = Vec4(5.0, 6.0, 7.0, 8.0)

    local s_Result = s_First - s_Second

    lu.assertEquals(s_Result.x, -4.0)
    lu.assertEquals(s_Result.y, -4.0)
    lu.assertEquals(s_Result.z, -4.0)
    lu.assertEquals(s_Result.w, -4.0)
end

function VextTestVec4:testMultiplyOtherVec4()
    local s_First = Vec4(1.0, 2.0, 3.0, 4.0)
    local s_Second = Vec4(5.0, 6.0, 7.0, 8.0)

    local s_Result = s_First * s_Second

    lu.assertEquals(s_Result.x, 5.0)
    lu.assertEquals(s_Result.y, 12.0)
    lu.assertEquals(s_Result.z, 21.0)
    lu.assertEquals(s_Result.w, 32.0)
end

function VextTestVec4:testMultiplyFloat()
    local s_First = Vec4(1.0, 2.0, 3.0, 4.0)
    local s_Second = 5.0

    local s_Result = s_First * s_Second

    lu.assertEquals(s_Result.x, 5.0)
    lu.assertEquals(s_Result.y, 10.0)
    lu.assertEquals(s_Result.z, 15.0)
    lu.assertEquals(s_Result.w, 20.0)
end

function VextTestVec4:testDivideOtherVec4()
    local s_First = Vec4(1.0, 2.0, 3.0, 4.0)
    local s_Second = Vec4(5.0, 6.0, 7.0, 8.0)

    local s_Result = s_First / s_Second

    lu.assertAlmostEquals(s_Result.x, 1.0 / 5.0, 0.1)
    lu.assertAlmostEquals(s_Result.y, 2.0 / 6.0, 0.1)
    lu.assertAlmostEquals(s_Result.z, 3.0 / 7.0, 0.1)
    lu.assertAlmostEquals(s_Result.w, 4.0 / 8.0, 0.1)
end

function VextTestVec4:testDivideFloat()
    local s_First = Vec4(1.0, 2.0, 3.0, 4.0)
    local s_Second = 5.0

    local s_Result = s_First / s_Second

    lu.assertAlmostEquals(s_Result.x, 1.0 / 5.0, 0.1)
    lu.assertAlmostEquals(s_Result.y, 2.0 / 5.0, 0.1)
    lu.assertAlmostEquals(s_Result.z, 3.0 / 5.0, 0.1)
    lu.assertAlmostEquals(s_Result.w, 4.0 / 5.0, 0.1)
end

function VextTestVec4:testDistanceOtherVec4()
    local s_First = Vec4(1.0, 2.0, 3.0, 4.0)
    local s_Second = Vec4(5.0, 6.0, 7.0, 8.0)

    local s_Result = s_First:Distance(s_Second)

    lu.assertEquals(s_Result, 8.0)
end

function VextTestVec4:testMagnitude()
    local s_Vec4 = Vec4(1.0, 2.0, 3.0, 4.0)

    lu.assertAlmostEquals(s_Vec4.magnitude, 5.4772255750517, 0.1)
end

function VextTestVec4:testEquals()
    local s_First = Vec4(1.0, 2.0, 3.0, 4.0)
    local s_Second = Vec4(1.0, 2.0, 3.0, 4.0)

    lu.assertTrue(s_First == s_Second)
end

function VextTestVec4:testToString()
    local s_Vec4 = Vec4(1.0, 2.0, 3.0, 4.0)

    lu.assertEquals(tostring(s_Vec4), "(1.000000, 2.000000, 3.000000, 4.000000)")
end
