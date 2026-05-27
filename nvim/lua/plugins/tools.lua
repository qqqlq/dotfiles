return {
  -- surround
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  -- TODOコメント
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup()
    end,
  },

  -- エラー一覧
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("trouble").setup()
      vim.keymap.set("n", "<leader>xx", ":Trouble diagnostics toggle<CR>", { desc = "エラー一覧" })
    end,
  },

  -- LSP進行状況
  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end,
  },

  -- diff表示
  {
    "sindrets/diffview.nvim",
    config = function()
      vim.keymap.set("n", "<leader>dv", ":DiffviewOpen<CR>", { desc = "Diffview開く" })
      vim.keymap.set("n", "<leader>dc", ":DiffviewClose<CR>", { desc = "Diffview閉じる" })
    end,
  },

  -- ターミナル
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<C-t>]],
        direction = "horizontal",
        size = 15,
      })
    end,
  },

  -- 自動フォーマット
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
        formatters_by_ft = {
          python = { "black" },
          javascript = { "prettier" },
          typescript = { "prettier" },
          vue = { "prettier" },
          lua = { "stylua" },
        },
      })
    end,
  },

  -- ウィンドウサイズ調整
  {
    "simeji/winresizer",
    config = function()
      vim.g.winresizer_start_key = "<C-e>"
    end,
  },
}
