local M = {}

function M.setup(theme, config)
  config = config or {}

  local syntax = theme.syntax
  local diff = theme.diff

  return {
    ['@variable'] = { fg = syntax.variable },
    ['@variable.builtin'] = { fg = syntax.builtin },
    ['@variable.parameter'] = { fg = syntax.parameter },
    ['@variable.parameter.builtin'] = { link = '@variable.builtin' },
    ['@variable.member'] = { fg = syntax.property },

    ['@constant'] = { fg = syntax.constant },
    ['@constant.builtin'] = { fg = syntax.builtin },
    ['@constant.macro'] = { fg = syntax.macro },

    ['@module'] = { fg = syntax.module },
    ['@module.builtin'] = { link = '@module' },

    ['@label'] = { fg = syntax.keyword_special },

    ['@string'] = { fg = syntax.string },
    ['@string.documentation'] = { fg = syntax.string_special },
    ['@string.escape'] = { fg = syntax.string_special },
    ['@string.regexp'] = { fg = syntax.string_special },
    ['@string.special'] = { fg = syntax.string_special },

    ['@character'] = { fg = syntax.string },
    ['@character.special'] = { fg = syntax.string_special },

    ['@boolean'] = { fg = syntax.primitive },
    ['@number'] = { fg = syntax.primitive },
    ['@number.float'] = { link = '@number' },

    ['@type'] = { fg = syntax.type },
    ['@type.builtin'] = { fg = syntax.builtin_type },
    ['@type.definition'] = { fg = syntax.type_definition },

    ['@property'] = { fg = syntax.property },

    ['@attribute'] = { fg = syntax.property },
    ['@attribute.builtin'] = { link = '@attribute' },

    ['@function'] = { fg = syntax.function_definition },
    ['@function.builtin'] = { fg = syntax.builtin },
    ['@function.call'] = { fg = syntax.function_call },
    ['@function.macro'] = { fg = syntax.macro },
    ['@function.method'] = { link = '@function' },
    ['@function.method.call'] = { link = '@function.call' },

    ['@constructor'] = { fg = syntax.function_definition },

    ['@operator'] = { fg = syntax.punctuation },

    ['@keyword'] = { fg = syntax.keyword },
    ['@keyword.return'] = { fg = syntax.keyword_special },
    ['@keyword.exception'] = { fg = syntax.keyword_special },
    ['@keyword.debug'] = { fg = syntax.keyword_special },
    ['@keyword.directive'] = { fg = syntax.keyword_special },
    ['@keyword.directive.define'] = { link = '@keyword.directive' },

    ['@punctuation'] = { fg = syntax.punctuation },
    ['@punctuation.delimiter'] = { link = '@punctuation' },
    ['@punctuation.bracket'] = { link = '@punctuation' },
    ['@punctuation.special'] = { link = '@punctuation' },

    ['@comment'] = { fg = syntax.comment },
    ['@comment.documentation'] = { fg = syntax.comment },

    ['@comment.error'] = { fg = syntax.comment_error },
    ['@comment.warning'] = { fg = syntax.comment_warn },
    ['@comment.todo'] = { fg = syntax.comment_todo },
    ['@comment.note'] = { fg = syntax.comment_note },

    -- TODO: More complete markup support
    ['@markup'] = {},

    ['@diff.plus'] = { fg = diff.add },
    ['@diff.minus'] = { fg = diff.remove },
    ['@diff.delta'] = { fg = diff.change },

    ['@tag'] = { fg = syntax.type },
    ['@tag.builtin'] = { fg = syntax.builtin },
    ['@tag.attribute'] = { fg = syntax.property },
    ['@tag.delimiter'] = { fg = syntax.punctuation }
  }
end

return M;
