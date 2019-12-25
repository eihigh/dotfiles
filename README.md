# dotfiles

* ./up to setup all

## How to create new container
- `01_build` を実行し docker image を作成する。これは `dev` ユーザーとsshデーモンとssh鍵設定のみを持つ最小限のコンテナになる。
- `02_start_base` を実行し先程のイメージからコンテナを作成する。
- `devbase` コマンドで作成したコンテナに接続し、環境を整える。
- 完成したら `03_commit` で新たな docker image としてコミットする。
- `04_start` を実行し完成したコンテナを建てる。
- `dev` コマンドで完成したコンテナに接続し、開発を行う。
