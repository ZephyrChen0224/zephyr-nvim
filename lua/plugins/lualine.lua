return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- 定义一个简单的透明主题
    local transparent_theme = {
      normal = {
        a = { bg = 'none', fg = '#cdd6f4', gui = 'bold' },
        b = { bg = 'none', fg = '#cdd6f4' },
        c = { bg = 'none', fg = '#cdd6f4' },
      },
      insert = { a = { bg = 'none', fg = '#a6e3a1' } },
      visual = { a = { bg = 'none', fg = '#cba6f7' } },
      replace = { a = { bg = 'none', fg = '#f38ba8' } },
      command = { a = { bg = 'none', fg = '#f9e2af' } },
      inactive = {
        a = { bg = 'none', fg = '#6c7086' },
        b = { bg = 'none', fg = '#6c7086' },
        c = { bg = 'none', fg = '#6c7086' },
      },
    }
    opts.options = opts.options or {}
    opts.options.theme = transparent_theme
    -- 核心修改：去除所有分隔符
    opts.options.section_separators = { left = '', right = '' }
    opts.options.component_separators = { left = '', right = '' }
  end,
}
