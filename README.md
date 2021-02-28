Motiva
===
Motivaはタスク管理アプリです。

## 開発環境
### 前提となる環境
- Dockerクライアントがホストマシンにインストールされていること

#### macOS での Docker セットアップ
以下のコマンドを実行後、 Docker.app を起動し、`docker ps` 等にて起動を確認。

```bash
# docker-compose も導入されるはず
brew cask install docker
```

### 開発環境の構築
以下で基本的に http://localhost:3000 でアプリにアクセスするまでが行われます。

```bash
git clone git@github.com:estie-inc/Motiva.git
cd <APPLICATION_ROOT>
make            # 一番上に定義されている silent-run
make setup-db   # db:create db:migrate db:seed (最初の一回)
```

`make up` で以下のコンテナが立ち上がります。
- `motiva_app`: Rails アプリ本体
- `motiva_db`: ローカルDB

*Gemfile を更新した場合などはコンテナの再ビルドが必要なため以下を実行すること*

```bash
make # コンテナの build も行う
# makeでserverが立ち上がらない場合、tmp/pids/server.pidを削除してください
```

コンテナの停止は

```bash
make stop
```

* Debug:

デバッグに便利なのは例えば以下。

```bash
make enter      # motiva_app コンテナに入る
make enter-db   # motiva_db コンテナに入る

make log        # motiva_app のログを見る
make log-all    # すべてのコンテナログをみる (logs/development.log ではないので注意)
...
```
