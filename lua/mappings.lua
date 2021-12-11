local mappings = {

}

mappings.curr_buf = function()
  local opt = require('telescope.themes').get_ivy({previewer=false, winblend=10})
  require('telescope.builtin').current_buffer_fuzzy_find(opt)
end

return mappings
