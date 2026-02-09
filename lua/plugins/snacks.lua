return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true, -- 점(.)으로 시작하는 파일도 항상 검색
          -- ignored = true, -- .gitignore에 등록된 파일도 검색
        },
      },
    },
  },
}
