# VextTest

A mod to test the VEXT API of Venice Unleashed

## Installation

The simplest way to install VextTest is by cloning this repository in your `Documents/Battlefield 3/Server/Admin/Mods` folder.

```
git clone https://github.com/paulhobbel/VextTest.git
```

Another way is to download the latest zip [here](https://github.com/paulhobbel/VextTest/archive/refs/heads/main.zip) and extract it in your mods folder.

More information about setting up a Venice Unleashed server can be found [here](https://docs.veniceunleashed.net/hosting/setup-win/)

## Contributing

The mod uses a modified version of [LuaUnit](https://github.com/bluebird75/luaunit). Read their documentation for more information about the different assertion functionality

Each VEXT type should be tested in it's own lua file. Aslo be aware that some types are Client/Server only. All shared types can be tested in the `ext/Shared` folder, client types in `ext/Client` an server types in `ext/Server`.

The tests of a type should be grouped on a table. The name of the table should aways start with `VextTest` following up by the type name, for example `Guid`. All test functions should start with `test`. Both are required for `LuaUnit` to pick up the tests

### An example

So let's say we will test the [Guid](https://docs.veniceunleashed.net/vext/ref/shared/type/guid/) type, we can create a new file at `ext/Shared/Types/GuidTests.lua`

```lua
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
```

After that the test has to be included in the `ext/Shared/__init__.lua`

```lua
local lu = require("__shared/luaunit")

-- All tests here
require("__shared/Types/GuidTests")

lu.LuaUnit.run()
```
