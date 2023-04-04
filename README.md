# lua-tinyyaml

- Homepage: https://github.com/zepinglee/citeproc-lua
- Author: Zeping Lee
- Email: zepinglee AT gmail DOT com
- License: MIT

The `lua-tinyyam` package is a lightweight YAML parser
written in pure Lua. It supports a subset of the YAML 1.2
specifications. This package is a dependency for several other LuaTeX
packages, including `markdown` and
`citeproc-lua`.

## Usage

To parse a YAML string into a Lua table, use the `parse` function:

```lua
contents = require("tinyyaml").parse(str)
```

## License

`lua-tinyyaml` is distributed under the MIT License.
