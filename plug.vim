let g:plug_home = stdpath('data') . '/plugged'

call plug#begin()
  Plug 'tpope/vim-fugitive'

  Plug 'nvim-lualine/lualine.nvim' "that cool line below everything
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'getomni/neovim', { 'branch': 'main' }
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-file-browser.nvim'
  Plug 'nvim-telescope/telescope-media-files.nvim'

  Plug 'windwp/nvim-autopairs'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'pantharshit00/vim-prisma'
  Plug 'windwp/nvim-ts-autotag'

  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

  Plug 'KarimElghamry/vim-auto-comment'

call plug#end()
