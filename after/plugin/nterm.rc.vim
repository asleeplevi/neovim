lua << EOF


require'nterm.main'.init({
  maps = true,  -- load defaut mappings
  shell = "bash",
  size = 20,
  direction = "horizontal", -- horizontal or vertical
  popup = 2000,     -- Number of miliseconds to show the info about the commmand. 0 to dissable
  popup_pos = "SE", --  one of "NE" "SE" "SW" "NW"
  autoclose = 2000, -- If command is sucesful, close the terminal after that number of miliseconds. 0 to disable
})


require'telescope'.load_extension('nterm')

vim.api.nvim_set_keymap(
  "n",
  "<space>t",
  "<cmd>lua require'nterm.main'.term_toggle() require'nterm.main'.term_focus()<cr>",
  { noremap=true }
)
EOF

