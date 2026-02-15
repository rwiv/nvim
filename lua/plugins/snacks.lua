return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = "", key = "p", desc = "Projects", action = ":lua Snacks.picker.projects()" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
      sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1, limit = 8 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1, limit = 3 },
        { section = "startup" },
      },
    },
    picker = {
      sources = {
        files = {
          hidden = true, -- 점(.)으로 시작하는 파일도 항상 검색
          -- ignored = true, -- .gitignore에 등록된 파일도 검색
        },
      },
    },
    scroll = {
      animate = {
        duration = {
          step = 10,
          total = 70,
        },
      },
    },
    indent = {
      animate = {
        enabled = false,
      },
    },
  },
}
