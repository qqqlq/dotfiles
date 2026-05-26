return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",  -- LSPからの補完
      "hrsh7th/cmp-buffer",     -- バッファからの補完
      "hrsh7th/cmp-path",       -- ファイルパスの補完
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),  -- 手動で補完を出す
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Enterで確定
          ["<Tab>"] = cmp.mapping.select_next_item(), -- Tabで次の候補
          ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- Shift+Tabで前の候補
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
}
