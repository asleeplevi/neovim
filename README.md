# My neovim config
![vim-gif](./assets/vim-config.gif)

I usually use this config for develop with these frameworks:

![Typescript](https://img.shields.io/badge/-Typescript-05122A?style=flat&logo=typescript)&nbsp;![Nextjs](https://img.shields.io/badge/-Next.JS-05122A?style=flat&logo=next.js)&nbsp;![Prisma](https://img.shields.io/badge/-Prisma-05122A?style=flat&logo=prisma)&nbsp;![Typescript](https://img.shields.io/badge/-Typescript-05122A?style=flat&logo=typescript)&nbsp;
### 📍 How use this config
I'm using [vim-plug](https://github.com/junegunn/vim-plug) to install plugins, but you can use Vundle or any other plugin manager that you want.

- Clone this repository or just copy and paste it into your .vimrc in the root path.
- After install de plugin  manager, if you are using vim-plug, run ```:PlugInstall``` command to install all plugins.
- See here how install and config [coc.vim](https://github.com/neoclide/coc.nvim.git), it's my favorite plugin, the best features are auto-complete while typing and go-to in imports, but there is a lot of others features, i recommend you to read his documentation. See below my CocConfig 👇
- I recommend you to use [tmux](https://github.com/tmux/tmux) too.
###  ⚙️CocConfig
Type `:CocConfig` to open this file, and this is my config
```json
{
  "suggest.noselect": false,
  "coc.preferences.formatOnSaveFiletypes": [
    "javascript",
    "typescript",
    "typescriptreact",
    "javascriptreact",
    "json",
    "typescript.tsx",
    "prisma"
  ]
}
```

### 📖 Explaining the configs
in soon

