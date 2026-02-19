return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_ignored = true, -- hide files that are ignored by other gitignore-like files
        hide_by_name = {
          ".git",
        },
      },
    },
  },
}
