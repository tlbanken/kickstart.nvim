-- github-nvim-theme - GitHub theme for Neovim
-- https://github.com/projekt0n/github-nvim-theme

vim.pack.add { 'https://github.com/projekt0n/github-nvim-theme' }

require('github-theme').setup {
  options = {
    transparent = false,
    styles = {
      comments = 'italic',
      keywords = 'bold',
      types = 'italic',
    },
  },
}

-- Load colorscheme
-- Available variants:
--   'github_dark'
--   'github_dark_default'
--   'github_dark_dimmed'
--   'github_dark_high_contrast'
--   'github_dark_colorblind'
--   'github_dark_tritanopia'
--   'github_light'
--   'github_light_default'
--   'github_light_high_contrast'
--   'github_light_colorblind'
--   'github_light_tritanopia'
vim.cmd.colorscheme 'github_dark'
