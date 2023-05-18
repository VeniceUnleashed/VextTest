local lu = require("__shared/luaunit")

VextTestGuid = {}

function VextTestGuid:testToString()
    local s_Guid = Guid("0560d65e-ddd9-46ba-8f49-deab4a09422c")

    lu.assertEquals(s_Guid:ToString("D"), "0560D65E-DDD9-46BA-8F49-DEAB4A09422C")
    lu.assertEquals(s_Guid:ToString("N"), "0560D65EDDD946BA8F49DEAB4A09422C")
    lu.assertEquals(s_Guid:ToString("B"), "{0560D65E-DDD9-46BA-8F49-DEAB4A09422C}")
    lu.assertEquals(s_Guid:ToString("P"), "(0560D65E-DDD9-46BA-8F49-DEAB4A09422C)")
end

function VextTestGuid:testProperties()
    local s_Guid = Guid("0560d65e-ddd9-46ba-8f49-deab4a09422c")

    lu.assertEquals(s_Guid.a, 0x0560D65E)
    lu.assertEquals(s_Guid.b, 0xDDD9)
    lu.assertEquals(s_Guid.c, 0x46BA)
    lu.assertEquals(s_Guid.d, 0x8F)
    lu.assertEquals(s_Guid.e, 0x49)
    lu.assertEquals(s_Guid.f, 0xDE)
    lu.assertEquals(s_Guid.g, 0xAB)
    lu.assertEquals(s_Guid.h, 0x4A)
    lu.assertEquals(s_Guid.i, 0x09)
    lu.assertEquals(s_Guid.j, 0x42)
    lu.assertEquals(s_Guid.k, 0x2C)
end
