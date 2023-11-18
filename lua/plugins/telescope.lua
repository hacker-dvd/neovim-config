-- install https://github.com/BurntSushi/ripgrep#installation
-- and https://github.com/sharkdp/fd#installation first
return {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',
    -- 'nvim-telescope/telescope-media-files.nvim',
    { 
      'nvim-telescope/telescope-fzf-native.nvim', 
      build = 'make' 
    }
  },
  config = function()
    -- require('telescope').load_extension('media_files')

    require('telescope').setup {
      extensions = {
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        },
        -- media_files = {
        --   -- filetypes whitelist
        --   -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
        --   filetypes = {"png", "webp", "jpg", "jpeg"},
        --   -- find command (defaults to `fd`)
        --   -- find_cmd = "rg"
        -- }
      }
    }

    require('telescope').load_extension('fzf')

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader><space>', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
    vim.keymap.set('n', '<leader>/', function()
      -- You can pass additional configuration to telescope to change theme, layout, etc.
      require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer' })
  end,
}
