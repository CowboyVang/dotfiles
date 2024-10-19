return {
  "AlexvZyl/nordic.nvim",
  priority = 1000,
  config = function()
    -- Nordic theme setup with custom background and after_palette logic
    require("nordic").setup({
      on_palette = function(palette)
        palette.red.base = palette.red.bright
        palette.orange.base = palette.orange.bright
        palette.yellow.base = palette.yellow.bright
        palette.green.base = palette.green.bright            
        palette.magenta.base = palette.magenta.bright
      end,

      -- Use after_palette to modify bg_visual
      after_palette = function(palette)
        local U = require("nordic.utils")
        local options = require('nordic.config').options
        options.on_palette(palette)
        -- Blend orange.base and the background to set bg_visual
        palette.red.base = palette.red.bright
        palette.orange.base = palette.orange.bright
        palette.yellow.base = palette.yellow.bright
        palette.green.base = palette.green.bright            
        palette.magenta.base = palette.magenta.bright
        -- palette.bg = "#252832"
        -- palette.bg_dark = "#242933"
     -- Cursorline Background
        if options.cursorline.theme == 'light' then
            options.cursorline.bg = platte.gray2
        else
            options.cursorline.bg = palette.gray0
        end

        palette.bg_visual = (options.transparent.bg and options.cursorline.bg)
            or U.blend(options.cursorline.bg, palette.bg, options.cursorline.blend)       
        -- options.cursorline.bg = palette.gray2
      end,

      -- Other configuration options
      bold_keywords = false,
      italic_comments = true,
      transparent = {
        bg = 0.8,
        float = false,
      },
      bright_border = true,
      reduced_blue = false,
      swap_backgrounds = false,
      cursorline = {
        bold = false,
        bold_number = true,
        theme = 'dark',
        blend = 0.85
      },
    })
    -- Load the theme after setup
  require("nordic").load()
  -- local palette = require('nordic.colors')
  -- vim.cmd('colorscheme nordic')

  local palette = require('nordic.colors')
  vim.cmd('colorscheme nordic')

  end,
}
  -- Load the theme after setup
