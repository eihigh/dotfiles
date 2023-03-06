# dotfiles

```
$ bash -x -c "$(curl -fsLS get.chezmoi.io)" -- init --apply eihigh
$ exit

$ gh auth login
$ update
```

## Other topics
### WSL2 (Ubuntu)

* ストアから Ubuntu をインストール
* username, password を設定
* 即エクスポート `wsl --export Ubuntu-XX C:\Users\myname\wsl\Ubuntu-XX.tar`
* 登録解除 `wsl --unregister Ubuntu-XX`
* 別名でインポート `wsl --import <New Name> C:\Users\myname\wsl\<New Name> C:\Users\myname\wsl\Ubuntu-XX.tar`
* Windows Terminal で既存のWSLプロファイルを複製、起動コマンド部分だけ変更
* 冒頭のコマンドを実行
