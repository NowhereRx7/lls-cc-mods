# lls-cc-mods
**Lua Language Service - ComputerCraft - Mod peripheral additions**

Intended to be used with:\
    [VS Code](https://code.visualstudio.com/)\
    + [Lua](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) Language Server Extension\
    + [Lua Language Server library for CC: Tweaked](https://github.com/nvim-computercraft/lua-ls-cc-tweaked)

I recommend creating up a separate profile in VS Code and then setting all this up.

Lua Language Server library for CC: Tweaked has instructions for setting up Lua to use third-party addons.

In your settings.json (global, profile, or project), you will need to add the path to a copy of this repo to the lworkspace library collection.
e.g.
```json
    "Lua.workspace.library": [
        "C:/LuaThirdParty/cc-tweaked-documentation/library",
        "C:/LuaThirdParty/lls-cc-mods",
    ],
```

Another helpful setting to cut out the noise in intellisense options:
```json
    "editor.suggest.showWords": false,
``` 
And you may need to disable copilot, because it gives really bad code for CC:
```json
    "github.copilot.enable": {
        "*": false
    },
```