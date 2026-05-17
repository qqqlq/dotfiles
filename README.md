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

```bash
brew install peco
```

### 3. zshプラグインをインストール

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
