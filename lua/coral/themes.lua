local M = {}

function M.setup(color, config)
  config = config or {}

  local theme = {}

  theme.syntax = {
    builtin = color.blue0,
    variable = color.gray2,
    global = color.gray4,
    parameter = color.gray4,
    constant = color.blue1,
    macro = color.coral2,
    module = color.blue2,
    primitive = color.blue1,
    punctuation = color.gray1,
    comment = color.gray0,

    type = color.blue1,
    type_definition = color.blue1,
    builtin_type = color.blue0,

    property = color.gray3,

    string = color.coral1,
    string_special = color.coral2,

    function_definition = color.coral2,
    function_call = color.coral2,

    keyword = color.coral0,
    -- Used for important control flow: return, throw, labels
    keyword_special = color.special,

    deprecated = color.gray1,

    -- Used for FIXME/TODO/NOTE comments
    comment_error = color.red,
    comment_warn = color.orange,
    comment_todo = color.yellow,
    comment_note = color.blue2,
  }

  theme.diff = {
    add = color.green,
    remove = color.red,
    change = color.orange
  }

  theme.ui = {
    bg0 = color.bg0,
    bg1 = color.bg1,
    bg2 = color.bg2,

    fg0 = color.gray0,
    fg1 = color.gray1,
    fg2 = color.gray2,
    fg3 = color.gray3,
    fg4 = color.gray4
  }

  theme.search = {
    fg = color.gray0,
    item = color.coral0,
    current = color.coral2
  }

  theme.diagnostic = {
    error = color.red,
    warn = color.yellow,
    info = color.blue2,
    ok = color.green
  }

  theme.special = color.special

  return theme
end

return M
