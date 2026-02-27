return {
  {
    "catppuccin/nvim",
    opts = {
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {
        all = {
          rosewater = "#bac2de", -- LazyGit cursor
          flamingo = "#bac2de", -- snacks.nvim cursor
          overlay0 = "#7f849c", -- suggestion, hint text
          surface0 = "#282837", -- line background, hint background
          base = "#1e1e1e",
          mantle = "#222222",
          crust = "#222222",
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
