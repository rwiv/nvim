return {
  "folke/trouble.nvim",
  keys = {
    { "<leader>cs", "<cmd>Trouble symbols toggle focus=true win.size=38<cr>", desc = "Symbols (Trouble)" },
    {
      "<leader>cS",
      "<cmd>Trouble lsp toggle focus=true win.size=60<cr>",
      desc = "LSP references/definitions/... (Trouble)",
    },
  },
  opts = {
    modes = {
      symbols = {
        filter = {
          kind = {
            "Class",
            -- "Constructor",
            "Enum",
            -- "Field",
            "Function",
            "Interface",
            "Method",
            "Module",
            "Namespace",
            "Package",
            -- "Property",
            "Struct",
            "Trait",
          },
        },
      },
    },
  },
}
