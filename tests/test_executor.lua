local Executor = require("modules.executor")
local mock = require("luassert.mock")

describe("Executor", function()
    it("should execute the echo command", function()
        local print_mock = mock(print, true)
        Executor.execute("echo", {"hello", "world"})
        assert.stub(print_mock).was.called_with("hello world")
        mock.revert(print_mock)
    end)
    
    it("should handle unknown commands", function()
        local print_mock = mock(print, true)
        Executor.execute("unknown", {})
        assert.stub(print_mock).was.called_with("Command not recognized: unknown")
        mock.revert(print_mock)
    end)
end)

