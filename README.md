# dotfiles

```
$ bash -x -c "$(curl -fsLS get.chezmoi.io)" -- init --apply eihigh
$ exit

$ gh auth login
$ update
```

## 概要
* Mac, Linux 対応、Windows 非対応
* 現在 Mac のみ code signing 対応、また 1password への依存も Mac のみある
* Linux では GitHub へのアクセスに ssh の代わりに https + gh auth login する
* Mac, Linux 両方とも Homebrew ですべて管理
* chezmoi encryption は鍵管理が手間なので今のところ予定なし

## Other topics
### WSL2 (Ubuntu)

* ストアから Ubuntu をインストール
* username, password を設定
* 即エクスポート `wsl --export Ubuntu-XX C:\Users\myname\wsl\Ubuntu-XX.tar`
* 登録解除 `wsl --unregister Ubuntu-XX`
* 別名でインポート `wsl --import <New Name> C:\Users\myname\wsl\<New Name> C:\Users\myname\wsl\Ubuntu-XX.tar`
* Windows Terminal で既存のWSLプロファイルを複製、起動コマンド部分だけ変更
* 冒頭のコマンドを実行
