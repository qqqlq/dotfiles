-- LSPキーマップ
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "定義へジャンプ" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "ドキュメント表示" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "参照を検索" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "リネーム" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "コードアクション" })
vim.keymap.set("n", "[d", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "前のエラーへ" })
vim.keymap.set("n", "]d", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "次のエラーへ" })

-- 一般的なキーマップ
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "保存" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "閉じる" })
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", { desc = "検索ハイライトを消す" })
-- 保存・終了
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "保存" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "閉じる" })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "保存して閉じる" })
vim.keymap.set("n", "<leader>Q", ":q!<CR>", { desc = "保存せず閉じる" })
vim.keymap.set("n", "<leader>bd", ":bd!<CR>", { desc = "バッファを閉じる" })
