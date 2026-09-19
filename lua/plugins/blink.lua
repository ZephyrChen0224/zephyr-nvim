return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter", -- 保留 Enter 键接受补全的行为
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
  },
}
