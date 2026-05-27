# dotfiles

自分用のシェル・エディタ設定ファイル。macOS・Ubuntu両対応。

## 構成

| ファイル/ディレクトリ | 説明 |
|---|---|
| `.zshrc` | zshメイン設定（プラグイン、エイリアス、関数など） |
| `.zprofile` | ログイン時のPATH設定 |
| `nvim/` | Neovim設定 |

## セットアップ

### 1. リポジトリをクローン

```bash
git clone git@github.com:qqqlq/dotfiles.git ~/dotfiles
```

### 2. 依存ツールをインストール

```bash
# macOS
brew install neovim ripgrep fd

# Ubuntu
sudo apt install neovim ripgrep fd-find
```

### 3. Oh My Zsh をインストール

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 4. peco をインストール（macOSのみ）

[peco](https://github.com/peco/peco) はインタラクティブな絞り込みツール。`Ctrl+R` でコマンド履歴をリアルタイム検索できる。

```bash
brew install peco
```

### 5. zshプラグインをインストール

| プラグイン | 説明 |
|---|---|
| zsh-syntax-highlighting | コマンド入力中に構文ハイライト |
| zsh-completions | 補完候補を追加 |
| zsh-autosuggestions | 履歴から入力候補をうっすら表示 |
| zsh-history-substring-search | 入力文字列を含む履歴を↑↓キーで検索 |

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
```

### 6. シンボリックリンクを作成

```bash
# zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zprofile ~/.zprofile
source ~/.zshrc

# Neovim
ln -s ~/dotfiles/nvim ~/.config/nvim
```

初回起動時にlazy.nvimとプラグインが自動インストールされる。

---

## Neovim

### プラグイン構成

| プラグイン | 説明 |
|---|---|
| lazy.nvim | プラグインマネージャー |
| tokyonight.nvim | カラースキーム |
| telescope.nvim | ファイル・文字列検索 |
| lualine.nvim | ステータスバー |
| nvim-treesitter | シンタックスハイライト（パーサー管理） |
| mason.nvim | 言語サーバー管理 |
| nvim-lspconfig | LSP設定 |
| nvim-cmp | 補完UI |
| neo-tree.nvim | ファイルツリー（サイドバー） |
| gitsigns.nvim | git差分を左端に表示 |
| indent-blankline.nvim | インデントガイド線 |
| nvim-autopairs | 括弧の自動補完 |
| Comment.nvim | コメントアウト |
| which-key.nvim | キーバインドのヒント表示 |

### 対応言語（LSP）

| 言語 | 言語サーバー |
|---|---|
| Python | pyright |
| TypeScript / JavaScript | ts_ls |
| Vue | vue_ls |
| C | clangd |
| Lua | lua_ls |

### キーバインド

| キー | 動作 |
|---|---|
| `Space ff` | ファイル検索 |
| `Space fg` | 文字列検索（grep） |
| `Space fb` | バッファ検索 |
| `Space e` | ファイルツリーの開閉 |
| `Space w` | ファイル保存 |
| `Space q` | 終了 |
| `Space rn` | シンボルのリネーム |
| `Space ca` | コードアクション |
| `gd` | 定義へジャンプ |
| `gr` | 参照を検索 |
| `K` | ドキュメント表示 |
| `[d` / `]d` | 前/次のエラーへ移動 |
| `gcc` | 行のコメントアウト |
| `Ctrl+Space` | 補完を手動で表示 |
| `Tab` | 補完候補を次へ |
| `Enter` | 補完を確定 |
