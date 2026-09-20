return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          -- 禁用默认的 <C-k> 签名帮助快捷键
          { "<C-k>", false, mode = { "i" } },
          -- 将签名帮助重新映射到其他按键（例如 <C-p>）
          { 
            "<C-p>", 
            function() vim.lsp.buf.signature_help() end, 
            mode = { "i" }, 
            desc = "Signature Help", 
            has = "signatureHelp" 
          },
        },
      },
    },
  },
}
