local M = {}

function M.setup(theme, config)
  config = config or {}

  local res = {
    ['@lsp.type.comment'] = { link = '@comment' },

    ['@lsp.type.decorator'] = { link = '@attribute' },
    ['@lsp.typemod.decorator.defaultLibrary'] = { link = '@attribute.builtin' },

    ['@lsp.type.enumMember'] = { link = '@constant' },
    ['@lsp.type.enumMember.defaultLibrary'] = { link = '@constant.builtin' },

    ['@lsp.type.function'] = { link = '@function' },
    ['@lsp.typemod.function.definition'] = { link = '@function.definition' },
    ['@lsp.typemod.function.defaultLibrary'] = { link = '@function.builtin' },

    ['@lsp.type.keyword'] = { link = '@keyword' },

    ['@lsp.type.macro'] = { link = '@constant.macro' },

    ['@lsp.type.method'] = { link = '@function.method' },

    -- modifier?

    ['@lsp.type.namespace'] = { link = '@module' },
    ['@lsp.typemod.namespace.defaultLibrary'] = { link = '@module.builtin' },

    ['@lsp.type.number'] = { link = '@number' },

    ['@lsp.type.operator'] = { link = '@operator' },

    ['@lsp.type.parameter'] = { link = '@variable.parameter' },

    ['@lsp.type.property'] = { link = '@variable.member' },

    ['@lsp.type.regexp'] = { link = '@string.regexp' },

    ['@lsp.type.string'] = { link = '@string' },

    ['@lsp.type.typeParameter'] = { link = '@type' }, -- TODO: Determine accuracy

    ['@lsp.type.variable'] = { link = '@variable' },
    ['@lsp.typemod.variable.defaultLibrary'] = { link = '@variable.builtin' }
  }


  -- Standard type definitions
  local standardTypes = { 'class', 'enum', 'event', 'interface', 'struct', 'type' }
  for _, ty in ipairs(standardTypes) do
    res['@lsp.type.' .. ty] = { link = '@type' }
    res['@lsp.typemod.' .. ty .. '.definition'] = { link = '@type.definition' }
    res['@lsp.typemod.' .. ty .. '.defaultLibrary'] = { link = '@type.builtin' }

    res['@lsp.typemod.' .. ty .. '.deprecated'] = { fg = theme.syntax.deprecated }
  end

  return res
end

return M
