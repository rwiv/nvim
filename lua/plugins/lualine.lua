return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_a = {},
        lualine_b = {},
        -- lualine_c = {
        --   { LazyVim.lualine.pretty_path() },
        -- },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      extensions = { "neo-tree", "lazy", "fzf" },
    },
  },
}
