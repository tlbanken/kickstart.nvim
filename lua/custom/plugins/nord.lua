-- nord.nvim - Nord theme for Neovim
-- https://github.com/gbprod/nord.nvim

vim.pack.add { 'https://github.com/gbprod/nord.nvim' }

require('nord').setup {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
  },
}

-- To use Nord as your active colorscheme, uncomment the line below:
-- vim.cmd.colorscheme 'nord'
