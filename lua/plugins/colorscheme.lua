return {
  {
    "catppuccin/nvim",
    opts = {
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
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
          rosewater = "#bd93f9", -- LazyGit cursor
          -- flamingo = "#d6acff",
          flamingo = "#ff92df", -- '>' (snacks find file)
          pink = "#ff92df", -- !, ?, {} (in fstring)
          mauve = "#ff79c6", -- keywords
          red = "#f38ba8", -- this(or self), error string
          maroon = "#f8f8f2", -- parameters
          peach = "#bd93f9", -- constants
          yellow = "#8be9fd", -- class, go package
          green = "#f1fa8c", -- strings
          teal = "#6272a4", -- python docstring, warning string
          sky = "#94e2d5", -- =, ==, |, &&, TODO comments, initializer
          sapphire = "#f1fa8c", -- ui folder color
          blue = "#50fa7b", -- functions
          lavender = "#ffb86c", -- attibutes
          text = "#b9bcd1",
          subtext1 = "#f8f8f2",
          subtext0 = "#f8f8f2",
          overlay2 = "#6272a4", -- comments
          overlay1 = "#6272a4",
          overlay0 = "#6272a4",
          surface2 = "#44475a",
          surface1 = "#6272a4", -- gitsigns
          surface0 = "#44475a",
          base = "#282a36",
          mantle = "#21222c",
          crust = "#191a21",
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
