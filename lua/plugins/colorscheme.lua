return {
  "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    -- 使用 on_highlights 直接修改高亮组
    on_highlights = function(hl, c)
      -- 清除 LspInlayHint 的背景色，保留原有的前景色 #545C7E
      hl.LspInlayHint = {
        bg = "NONE",
        fg = "#545C7E", -- 截图里的 5528702 对应的颜色
      }
      -- 顺便处理 LspCodeLens 和其他 LSP 提示
      hl.LspCodeLens = {
        bg = "NONE",
        fg = "#545C7E",
      }
      -- 当前行彻底透明
      hl.CursorLine = { bg = "NONE" }
      -- 仅靠行号高亮（变蓝、加粗）来告诉你光标在哪
      hl.CursorLineNr = { bg = "NONE", fg = "#7AA2F7", bold = true }
      -- 如果你希望 LazyVim 的通知窗口也不透明，可以加上这句：
      -- hl.NotifyBackground = { bg = "NONE" }
      -- 使状态栏透明 (lualine 会使用这个高亮组)
      hl.StatusLine = { bg = "NONE" }
      hl.StatusLineNC = { bg = "NONE" }
    end,
  },
}
