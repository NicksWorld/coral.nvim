local colors = {
  -- Coral pink colors
  coral0 = '#AA6666',
  coral1 = '#C39393',
  coral2 = '#D5B3B3',

  -- Blue-gray colors
  blue0 = '#535F76',
  blue1 = '#868F9F',
  blue2 = '#BABFC8',

  gray0 = '#444444',
  gray1 = '#696969',
  gray2 = '#818181',
  gray3 = '#b4b4b4',
  gray4 = '#d9d9d9',

  -- Mainly used for error/warn/info
  green = '#71995f',
  red = '#B94343',
  orange = '#FF8E61',
  yellow = '#FDDB76',
  special = '#6f92d4',

  -- UI
  bg0 = '#060605',
  bg1 = '#100f0e',
  bg2 = '#272626'
}

local M = {}

function M.setup(config)
  config = config or {}
  return vim.tbl_extend('force', colors, config.override_colors or {})
end

return M
