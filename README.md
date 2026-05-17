# dotfiles

自分用のシェル設定ファイル。

## 含まれるファイル

| ファイル | 説明 |
|---|---|
| `.zshrc` | zshメイン設定（プラグイン、エイリアス、関数など） |
| `.zprofile` | ログイン時のPATH設定 |

## セットアップ

### 1. Oh My Zsh をインストール

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 2. peco をインストール（Macの場合）

[peco](https://github.com/peco/peco) はインタラクティブな絞り込みツール。`Ctrl+R` でコマンド履歴をリアルタイム検索できるようになります。

```bash
brew install peco
```

### 3. zshプラグインをインストール

| プラグイン | 説明 |
|---|---|
| zsh-syntax-highlighting | コマンドを入力中に構文ハイライトしてくれる |
| zsh-completions | 補完候補を追加してくれる |
| zsh-autosuggestions | 履歴から入力候補をうっすら表示してくれる |
| zsh-history-substring-search | 入力した文字列を含む履歴を↑↓キーで検索できる |



```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
```

### 4. dotfiles を適用

```bash
git clone git@github.com:qqqlq/dotfiles.git ~/dotfiles
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zprofile ~/.zprofile
source ~/.zshrc
```
