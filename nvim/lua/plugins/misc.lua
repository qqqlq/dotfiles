return {
  -- インデントガイド線
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  -- 自動括弧閉じ
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup()
    end,
  },

  -- コメントアウト
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  -- キーバインドヒント
  {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup()
    end,
  },
}
