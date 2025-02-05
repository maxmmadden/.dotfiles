return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  config = function()
    require("lsp_lines").setup()
    -- Disable virtual_text to avoid duplication
    vim.diagnostic.config({
      virtual_text = false,
      virtual_lines = true,
    })
  end,
}

