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
          rosewater = "#acb2be", -- LazyGit cursor
          flamingo = "#acb2be", -- '>' (snacks find file)
          pink = "#be5046", -- !, ?, {} (in fstring)
          mauve = "#b477cf", -- keywords
          red = "#bf956a", -- this(or self), error string
          maroon = "#dce0e5", -- parameters
          peach = "#dfc184", -- constants
          yellow = "#6eb4bf", -- class, go package, rust self
          green = "#a1c181", -- strings
          teal = "#dfc184", -- python docstring, warning string
          sky = "#56b6c2", -- =, ==, |, &&, TODO comments, initializer
          sapphire = "#a1c181", -- ui folder color
          blue = "#73ade9", -- functions
          lavender = "#d07277", -- attibutes
          text = "#acb2be",
          subtext1 = "#dce0e5",
          subtext0 = "#dce0e5",
          overlay2 = "#878e98", -- comments, brackets
          overlay1 = "#878e98",
          overlay0 = "#5d636f", -- suggestion, hint text
          surface2 = "#2f343e",
          surface1 = "#5d636f", -- gitsigns
          surface0 = "#2f343e", -- line background, hind background
          base = "#282c33",
          mantle = "#2f343e",
          crust = "#3b414d",
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
