# Awesome EmmyLua

## About

AwesomeWM doesn't have good support for Lua autocompletion, so this repository is intended to rewrite documentation entirely by hand, without using generation tools.

- AwesomeWM Official Website: https://awesomewm.org/
- Lua Official Website: https://www.lua.org/

## Usage

We work with Lua using the LSP server [`lua-language-server`](https://github.com/sumneko/lua-language-server/) created by [sumneko](https://github.com/sumneko/), where its type annotations are based on [EmmyLua annotations](https://emmylua.github.io/annotation.html).

- First, clone that repository somewhere on your disk using Git:

```sh
git clone https://github.com/awchad/awesome-emmylua ~/.local/share/awesome-emmylua
```
- If your Lua project folder doesn't have a `.luarc.json`, create one and paste the following lines:
```
{
  "diagnostics.globals": [
    "awesome",
    "client",
    "screen",
    "tag",
    "root"
  ],
  "workspace.library": [
    "~/.local/share/awesome-emmylua/lua"
  ]
}
```

- You now have AwesomeWM autocompletion!

## License

This repository is licensed under the [GNU General Public License v3.0](https://opensource.org/licenses/gpl-3.0.html). Please see [the license file](../COPYING) for more information. [tl;dr](https://tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3)) you can do whatever you want as long as you include the original copyright and license notice in any copy of the software/source.
