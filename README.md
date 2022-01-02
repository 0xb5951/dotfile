# 概要

dotfilesを管理するためのリポジトリ。
dotfilesについては以下を参照。
<https://qiita.com/yutkat/items/c6c7584d9795799ee164>

## 目的

開発環境の管理とそれに伴う改善の実施

## 詳細

### 運用ルール

- 管理したい対象は、Readmeに追加すること
- 設定の反映にはdotfilesのsetup.shを使用すること

### 管理対象

- [shell(fish)の設定](#fish)
- gitconfig

## 設定メモ

dotfilesで管理している項目の設定内容を記載する。

### fish

fishに加えて、fisherでプラグインを管理している。

テーマは、`oh-my-fish/theme-bobthefish`をベースにカスタマイズしてある。

fisherで管理しているプラグインは、パッケージ一覧である`fish_plugins`のみを管理している。

fish では~/.config/fish/conf.d/*.fish は全部設定ファイルとして読み込まれるので、適切な単位で分割する。

fishのプラグインによる文字化け解消のため、Powerline Fontを入れている。

```shell
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
```

インストール後、iterm2などのフォントをpower系に変更する。

set -Uで現在反映されている設定一覧を確認できる

#### 参考文献

<https://vlike-vlife.netlify.app/posts/dotfiles_fish_fisher>

<https://zenn.dev/sawao/articles/0b40e80d151d6a>

<https://nemoplus.hateblo.jp/entry/20090119/1232373540>

## 参考文献

<https://qiita.com/yutkat/items/c6c7584d9795799ee164>
