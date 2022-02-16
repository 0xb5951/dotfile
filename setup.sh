#!/bin/bash

# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR
git submodule init
git submodule update

# ホームディレクトリに.XXXファイルのシンボリックリンクを追加
echo "start setup..."
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue
    [ "$f" = ".github" ] && continue

    ln -snfv ~/www/private/dotfiles/"$f" ~/
done

# fishの設定を.config配下に反映
rm -rd ~/.config/fish
ln -sf ~/www/private/dotfiles/fish ~/.config/fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher update
