local Parser = require("modules.parser")
local assert = require("luassert")

describe("Parser", function()
    it("should parse a simple command", function()
        local result = Parser.parse("echo hello world")
        assert.are.same({"echo", "hello", "world"}, result)
    end)
    
    it("should handle multiple spaces", function()
        local result = Parser.parse("echo    hello   world")
        assert.are.same({"echo", "hello", "world"}, result)
    end)
end)

