local M = {}

function M.setup(theme)
  return {
    -- GitSigns
    GitSignsAdd = { fg = theme.diff.add },
    GitSignsChange = { fg = theme.diff.change },
    GitSignsDelete = { fg = theme.diff.remove },
  }
end

return M
