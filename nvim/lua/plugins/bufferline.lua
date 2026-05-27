return {
  {
    "romgrk/barbar.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      vim.keymap.set("n", "<Tab>", ":BufferNext<CR>", { desc = "次のバッファ" })
      vim.keymap.set("n", "<S-Tab>", ":BufferPrevious<CR>", { desc = "前のバッファ" })
      vim.keymap.set("n", "<leader>bd", ":BufferClose<CR>", { desc = "バッファを閉じる" })
    end,
  },
}
