return {
  'smoka7/hop.nvim',
  version = '*',
  lazy = false,
  config = function()
    local hop = require 'hop'

    -- Setup hop with your custom keys
    hop.setup {
      keys = 'etovxqpdygfblzhckisuran',
    }

    -- Set up keymaps
    local directions = require('hop.hint').HintDirection

    vim.keymap.set('', 'f', function()
      hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true }
    end, { remap = true })

    vim.keymap.set('', 'F', function()
      hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true }
    end, { remap = true })

    vim.keymap.set('', 't', function()
      hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 }
    end, { remap = true })

    vim.keymap.set('', 'T', function()
      hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }
    end, { remap = true })

    -- Simple hop keymaps
    vim.keymap.set('', 'S', function()
      hop.hint_words()
    end, { desc = 'Hop to word' })

    vim.keymap.set('', '<leader>w', function()
      hop.hint_lines()
    end, { desc = 'Hop to line' })
  end,
}
