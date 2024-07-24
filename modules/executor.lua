local Executor = {}

function Executor.execute(command, args)
    if command == "echo" then
        print(table.concat(args, " "))
    elseif command == "exit" then
        os.exit(0)
    else
        print("Command not recognized: " .. command)
    end
end

return Executor

