package = "lush"
version = "dev-1"
source = {
   url = "git+https://github.com/Bikoil/lush"
}
description = {
   summary = "A Cross-Compatible shell written in lua",
   detailed = [[
A Cross-Compatible shell written in lua, On all platforms such as Windows, Linux, MacOS and BSD
]],
   homepage = "https://github.com/Bikoil/lush",
   license = "BSD 3-Clause"
}
build = {
   type = "builtin",
   modules = {
      main = "main.lua"
   }
}
