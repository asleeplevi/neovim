
local action_state = require('telescope.actions.state')

require'telescope'.setup{
  defaults = {
    prompt_prefix='🔎',
    file_ignore_patterns={'node_modules/*'},
    mappings = {
      i = {
        ['<C-a>'] = function() print(vim.inspect(action_state.get_selected_entry())) end
      }
    },
  },
  pickers = {
    find_files = {
      theme = 'ivy'
    },
    file_browser = {
     theme = 'ivy'
    }
  },
  extensions = {
    file_browser = {
      theme = 'ivy'
    }
  }
}


commands = {
  {'n', '<space>b', '<cmd>lua require"telescope".extensions.file_browser.file_browser()<cr>', true},
  {'n', '<space>f', '<cmd>lua require"mappings".find_files()<cr>', true},
  {'n', '<space>r', '<cmd>lua require"mappings".live_grep()<cr>', true},
  {'n', '<space>m', '<cmd>lua require"mappings".media_files()<cr>', true},
  {'n', '<space>gf', '<cmd>lua require"mappings".git_files()<cr>', true},
}

for i=1, #commands do 
  local command = commands[i]
  vim.api.nvim_set_keymap(command[1], command[2], command[3], {noremap=command[4]})
end
