local u = require('utils')

--  Onedark Theme
require('onedark').setup  {
  style = 'dark',
  transparent = true,

  toggle_style_key = '<leader>ts',
  toggle_style_list = {'dark', 'light'},

  code_style = {
    comments = 'italic',
    keywords = 'none',
    functions = 'none',
    strings = 'none',
    variables = 'none'
  },
}

-- Colorscheme
require('onedark').load()
