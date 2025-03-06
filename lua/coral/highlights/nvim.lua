local M = {}

function M.setup(theme, _config)
  return {
    Normal = { bg = theme.ui.bg1, fg = theme.ui.fg2 },
    Title = { fg = theme.ui.fg4 },
    Whitespace = { fg = theme.ui.fg0 },

    Identifier = { link = '@type' },
    Function = { link = '@function.call' },
    Type = { link = '@type' },
    Variable = { link = '@variable' },
    Statement = { link = '@keyword' },
    Special = { fg = theme.keyword_special },
    Keyword = { link = '@keyword' },
    Conditional = { link = '@keyword' },
    Repeat = { link = '@keyword' },
    Label = { link = 'Special' },
    Exception = { link = 'Special' },
    PreProc = { link = '@keyword' },

    Constant = { link = '@constant' },
    String = { link = '@string' },
    Character = { link = '@string' },
    Number = { link = '@number' },
    Boolean = { link = '@boolean' },
    Float = { link = '@number.float' },

    Quote = { link = '@string' },
    Operator = { link = '@punctuation' },
    Delimiter = { link = '@punctuation' },
    MatchParen = { link = '@punctuation' },

    Todo = { link = '@comment.todo' },
    Question = { link = '@comment.note' },
    Comment = { link = '@comment' },
    SpecialComment = { link = '@comment' },


    NonText = { fg = theme.ui.fg3 },

    SignColumn = { bg = theme.ui.bg0, fg = theme.ui.fg1 },
    ColorColumn = { bg = theme.ui.bg2 },

    CursorLine = { bg = theme.ui.bg2 },
    CursorColumn = { link = 'CursorLine' },

    LineNr = { fg = theme.ui.fg0 },
    CursorLineNr = { fg = theme.ui.fg4 },

    Cursor = { fg = theme.ui.bg0, bg = theme.ui.fg0 },
    lCursor = { link = 'Cursor' },
    CursorIM = { link = 'Cursor' },

    Search = { fg = theme.search.fg, bg = theme.search.item },
    CurSearch = { fg = theme.search.fg, bg = theme.search.current },
    IncSearch = { link = 'CurSearch' },
    Substitute = { link = 'Search' },

    DiffAdd = { fg = theme.diff.add },
    DiffDelete = { fg = theme.diff.remove },
    DiffChange = { fg = theme.diff.change },
    DiffText = { fg = theme.diff.change },

    diffAdded = { link = 'DiffAdd' },
    diffRemoved = { link = 'DiffDelete' },
    diffChanged = { link = 'DiffChange' },
    diffOldFile = { link = 'DiffDelete' },
    diffNewFile = { link = 'DiffAdd' },

    Error = { fg = theme.diagnostic.error },
    ModeMsg = { fg = theme.diagnostic.info },
    MoreMsg = { fg = theme.diagnostic.info },
    MsgArea = { fg = theme.diagnostic.info },
    ErrorMsg = { fg = theme.diagnostic.error },
    WarningMsg = { fg = theme.diagnostic.warn },
    NvimInternalError = { fg = theme.diagnostic.error },
    healthError = { fg = theme.diagnostic.error },
    healthSuccess = { fg = theme.diagnostic.ok },
    healthWarning = { fg = theme.diagnostic.warn },

    StatusLine = { fg = theme.ui.fg3, bg = theme.ui.bg2 },
    StatusLineNC = { fg = theme.ui.fg2, bg = theme.ui.bg1 },

    SpellBad = { undercurl = true, sp = theme.diagnostic.error },
    SpellCap = { undercurl = true, sp = theme.diagnostic.warn },
    SpellLocal = { undercurl = true, sp = theme.diagnostic.warn },
    SpellRare = { undercurl = true, sp = theme.diagnostic.warn },

    DiagnosticError = { fg = theme.diagnostic.error },
    DiagnosticWarn = { fg = theme.diagnostic.warn },
    DiagnosticInfo = { fg = theme.diagnostic.info },
    DiagnosticHint = { fg = theme.diagnostic.info },
    DiagnosticOk = { fg = theme.diagnostic.ok },

    DiagnosticVirtualTextError = { link = 'DiagnosticError' },
    DiagnosticVirtualTextWarn = { link = 'DiagnosticWarn' },
    DiagnosticVirtualTextInfo = { link = 'DiagnosticInfo' },
    DiagnosticVirtualTextHint = { link = 'DiagnosticHint' },

    DiagnosticFloatingError = { link = 'DiagnosticError' },
    DiagnosticFloatingWarn = { link = 'DiagnosticWarn' },
    DiagnosticFloatingInfo = { link = 'DiagnosticInfo' },
    DiagnositcFloatingHint = { link = 'DiagnosicHint' },
    DiagnosticFloatingOk = { link = 'DiagnosticOk' },

    DiagnositcSignError = { fg = theme.diagnostic.error },
    DiagnosticSignWarn = { fg = theme.diagnostic.warn },
    DiagnosticSignInfo = { fg = theme.diagnostic.info },
    DiagnosticSignHint = { fg = theme.diagnostic.info },
  }
end

return M
