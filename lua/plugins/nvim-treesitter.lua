return {
  "nvim-treesitter/nvim-treesitter",
  main = "nvim-treesitter.configs",
  build = ":TSUpdate",
  opts = {
    -- ensure_installed = "all",
    ensure_installed = { "c", "cpp", "python", "java", "json", "lua", "vim", "vimdoc", "query" },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}

-- return {
--   "nvim-treesitter/nvim-treesitter",
--   config = function()
--     require'nvim-treesitter.configs'.setup {
--       ensure_installed = { "c", "cpp", "python", "java", "json", "lua", "vim", "vimdoc", "query" },
--       highlight = { enable = true, },
--       indent = { enable = true },
--       rainbow = {
--         enable = true,
--         extended_mode = true,
--         max_file_lines = nil,
--       }
--     }
--   end,
-- }

