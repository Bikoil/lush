local Parser = {}

function Parser.parse(input)
    local args = {}
    for arg in string.gmatch(input, "%S+") do
        table.insert(args, arg)
    end
    return args
end

return Parser

