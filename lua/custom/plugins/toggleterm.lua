-- toggleterm.nvim - A neovim plugin to persist and toggle multiple terminals
-- https://github.com/akinsho/toggleterm.nvim

vim.pack.add { 'https://github.com/akinsho/toggleterm.nvim' }

require('toggleterm').setup {
  size = function(term)
    if term.direction == 'horizontal' then
      return 15
    elseif term.direction == 'vertical' then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<c-\>]],
  direction = 'horizontal', -- 'vertical' | 'horizontal' | 'tab' | 'float'
  shade_terminals = true,
  shading_factor = 2,
  persist_size = true,
  close_on_exit = true,
  float_opts = {
    border = 'curved',
    winblend = 3,
  },
}

-- Keymaps
local keymap = vim.keymap.set
keymap('n', '<leader>tt', '<cmd>ToggleTerm direction=horizontal<CR>', { desc = '[T]oggle [T]erminal (horizontal)' })
keymap('n', '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', { desc = '[T]oggle [T]erminal (float)' })
keymap('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical<CR>', { desc = '[T]oggle [T]erminal (vertical)' })
keymap('n', '<C-]>', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Toggle float terminal' })

-- Make <Esc><Esc> exit terminal mode (consistent with rest of config)
keymap('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
keymap('t', '<C-]>', '<cmd>ToggleTerm<CR>', { desc = 'Toggle float terminal' })
