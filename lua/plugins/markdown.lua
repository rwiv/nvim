return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      heading = { enabled = false },
      paragraph = { enabled = false },
      -- code = { enalbed = false },
      dash = { enabled = false },

      bullet = { enabled = false },
      checkbox = { enabled = false },
      quote = { enabled = false },
      -- pipe_table = { enabled = false },
      -- callout = { enabled = false },

      -- link = { enabled = false },
      sign = { enabled = false },
      indent = { enabled = false },
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    init = function()
      vim.g.mkdp_theme = "light"
    end,
  },
}
