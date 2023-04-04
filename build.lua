---@diagnostic disable: lowercase-global

module = "lua-tinyyaml"

installfiles = {"*.lua"}
scriptfiles = {"*.lua"}
sourcefiles = {"tinyyaml.lua", "*.tex"}
textfiles = {"README.md"}
typesetfiles = {"*.tex"}

local function get_package_version()
  local f = io.open("lua-tinyyaml.tex")
  if f then
    local content = f:read("*a")
    f:close()
    return string.match(content, "\\date{%d+%-%d+%-%d+ v([%d.]+)")
  end
end

uploadconfig = {
  pkg = module,
  version = get_package_version(),
  author = "Zeping Lee",
  license = "mit",
  uploader = "Zeping Lee",
  email = "zepinglee@gmail.com",
  summary = "A tiny YAML (subset) parser in pure Lua",
  description =
  [[The lua-tinyyaml package is a lightweight YAML parser written in pure Lua. It supports a subset of the YAML 1.2 specifications. This package is a dependency for several other LuaTeX packages, including markdown and citeproc-lua.]],
  ctanPath = "/macros/luatex/generic/lua-tinyyaml",
  repository = "https://github.com/zepinglee/lua-tinyyaml",
  bugtracker = "https://github.com/zepinglee/lua-tinyyaml/issues",
  topic = {"parser", "use-lua"},
  announcement = "",
  update = true,
}
