local M = {}

function M.setup(theme, config)
  config = config or {}

  local highlights = {}
  for _, highlight in ipairs({ 'nvim', 'treesitter', 'lsp', 'plugins' }) do
    local mod = require('coral.highlights.' .. highlight)
    for hl, spec in pairs(mod.setup(theme, config)) do
      highlights[hl] = spec
    end
  end

  return highlights
end

function M.apply(highlights)
  for hl, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, hl, spec)
  end
end

return M
