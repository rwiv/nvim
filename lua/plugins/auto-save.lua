return {
  "okuuva/auto-save.nvim",
  event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
  opts = {
    enabled = true,
    condition = function(buf)
      if vim.fn.getbufvar(buf, "&buftype") ~= "" then
        return false
      end
      return true
    end,
  },
}
