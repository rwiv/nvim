-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function()
    vim.opt.spell = false -- dissable spell checking for markdown files
  end,
})

-- https://neovim.io/doc/user/faq.html#faq
vim.api.nvim_create_autocmd({ "VimLeave", "VimSuspend" }, {
  pattern = "*",
  callback = function()
    -- https://github.com/microsoft/terminal/issues/13420#issuecomment-1501102143
    vim.opt.guicursor = ""
    vim.fn.chansend(vim.v.stderr, "\x1b[ q")
  end,
  desc = "Restore terminal cursor",
})

vim.api.nvim_create_autocmd({ "FileType", "BufWinEnter" }, {
  -- Include both 'markdown' (for FileType) and extension patterns (for BufWinEnter).
  -- Adding 'BufWinEnter' fixes the issue where window-local options (wrap, linebreak)
  -- are lost when quickly switching back and forth between buffers using Harpoon.
  pattern = { "markdown", "*.md", "*.markdown" },
  callback = function(args)
    -- Double-check the filetype to apply safely even when triggered by extension patterns.
    if vim.bo[args.buf].filetype == "markdown" then
      vim.b[args.buf].autoformat = false

      vim.opt_local.wrap = true
      vim.opt_local.linebreak = true
    end
  end,
})
