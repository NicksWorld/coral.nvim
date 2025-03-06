local M = {}

M.config = {
  undercurl = true,
  commentStyle = { italic = true }
}

M.load = function()
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end

  vim.g.colors_name = 'coral'
  vim.o.termguicolors = true

  local colors = require('coral.colors').setup(M.config)
  local theme = require('coral.themes').setup(colors, M.config)
  local highlights = require('coral.highlights').setup(theme, M.config)

  require('coral.highlights').apply(highlights)
end

return M
