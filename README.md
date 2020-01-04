# dotfiles

* ./up to setup all

## How to create new container
- `01_build` を実行し docker image を作成する。これは `dev` ユーザーとssh関連設定のみを持つ最小限のコンテナになる。
- `02_(unix|win)_start_base` を実行し基礎イメージからコンテナを作成する。
- `devbase` コマンドで作成したコンテナに接続し、環境を整える。
- 完成したら `03_commit` で新たな docker image としてコミットする。
- `04_(unix|win)_start` を実行し完成したコンテナを建てる。
- `dev` コマンドで完成したコンテナに接続し、開発を行う。
