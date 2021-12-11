" Find files using Telescope command-line sugar.
nnoremap <silent><space>f <cmd>lua require'telescope.builtin'.find_files({hidden=true})<cr>
nnoremap  <silent><space>r <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap  <silent><space>m <cmd>lua require('telescope').extensions.media_files.media_files()<cr>
nnoremap  <silent><space>b <cmd>lua require('telescope').extensions.file_browser.file_browser()<cr>
nnoremap  <silent><space>gb <cmd>lua require('telescope.builtin').git_files()<cr>

lua << EOF
local action_layout = require('telescope.actions.layout')
local action_state = require('telescope.actions.state')
require('telescope').setup{
  defaults = {
    prompt_prefix='🔎 ',
    file_ignore_patterns={'node_modules/*', '.git/*'},
    mappings = {
      n = {
        ['<C-p>'] = action_layout.toggle_preview,
      },
      i = {
        ['<C-p>'] = action_layout.toggle_preview,
        ['<C-a>'] = function() print(vim.inspect(action_state.get_selected_entry())) end
      },
    },
  },
    pickers = {
      find_files = {
        theme = 'ivy'  
      },
      file_browser= {
        theme = 'ivy'  
      }
    },
   extensions = {
    media_files = {
      filetypes = {"png", "webp", "jpg", "jpeg"},
    },
    file_browser = {
      theme='ivy'
    }
  },
}

require('telescope').load_extension'file_browser'
require('telescope').load_extension'media_files'
EOF
