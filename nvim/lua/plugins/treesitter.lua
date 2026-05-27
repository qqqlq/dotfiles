return {
  -- パーサー管理のみnvim-treesitterを使う
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "lua", "python", "javascript", "typescript",
        "tsx", "vue", "bash", "c", "asm",
        "json", "markdown", "html", "css",
      },
    },
  },
}
