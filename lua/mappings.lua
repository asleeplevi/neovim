local mappings = {

}

local ivyThemeOpt = function(opt) return require'telescope.themes'.get_ivy(opt) end

mappings.curr_buf = function()
  local options = ivyThemeOpt({previewer=false})
  require('telescope.builtin').current_buffer_fuzzy_find(options)
end

mappings.find_files = function()
  local opt = ivyThemeOpt()
  require'telescope.builtin'.find_files(opt)
end

mappings.live_grep = function()
  local opt = ivyThemeOpt({ previewer=false})
  require'telescope.builtin'.live_grep(opt)
end

mappings.media_files = function()
  local opt = ivyThemeOpt()
  require'telescope'.extensions.media_files.media_files(opt)
end

mappings.git_files = function()
  local opt = ivyThemeOpt()
  require"telescope.builtin".git_files(opt)
end


mappings.relative_browser = function()
  local full_path = vim.fn.expand('%')
  local directory = full_path:match("(.*[/\\])")
  require"telescope".extensions.file_browser.file_browser({cwd=directory})
end
return mappings
