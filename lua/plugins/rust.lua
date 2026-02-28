return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            inlayHints = {
              typeHints = {
                enable = false, -- disable type hints
              },
            },
          },
        },
      },
    },
  },
}
