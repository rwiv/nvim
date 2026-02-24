-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 일반 모드: @상대경로 복사 (예: @src/main.py) - 줄 번호 포함 안 함
vim.keymap.set("n", "<leader>cy", function()
  -- '%:.' 는 현재 작업 경로(cwd) 기준 상대 경로를 반환합니다.
  local path = vim.fn.expand("%:.")
  local result = "@" .. path

  -- 시스템 클립보드에 복사
  vim.fn.setreg("+", result)

  -- 복사 완료 메시지 출력
  print("Copied: " .. result)
end, { desc = "Copy @relative_file" })

-- 비주얼 모드: @상대경로#선택범위 복사 (예: @src/main.py#15-25)
vim.keymap.set("v", "<leader>cy", function()
  local path = vim.fn.expand("%:.")
  local v_start = vim.fn.line("v")
  local v_end = vim.fn.line(".")

  -- 아래에서 위로 드래그했을 경우 시작/끝 정렬
  if v_start > v_end then
    v_start, v_end = v_end, v_start
  end

  local result = "@" .. path .. "#" .. v_start .. "-" .. v_end
  vim.fn.setreg("+", result)
  print("Copied: " .. result)

  -- 복사 후 비주얼 모드 해제
  local keys = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
  vim.api.nvim_feedkeys(keys, "n", false)
end, { desc = "Copy @relative_file#range" })
