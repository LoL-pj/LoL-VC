
# LoLVC - LoLの友達募集掲示板 - ( https://www.lolvc.org/ ) 




## 環境構築

### 前提
Dockerを使って立ち上げます。

### 環境変数の設定
`.env`ファイルの追加

```
$ cp .env.example .env
$ vi .env  # Edit API KEY
```

`API KEY`は@rutkoに聞いてください

### ビルド
`docker-compose build`

### 起動
`docker-compose up`

localhost:3000 にアクセス

## Tips

### Rails console起動
`docker-compose run web bundle exec rails c`

### DB Create
`docker-compose run web bundle exec rails db:create`

### DB Migration
`docker-compose run web bundle exec rails db:migrate`

CreateとMigrationを同時に行う場合
`docker-compose run web bundle exec rails db:create db:migrate`

### DB Seed
`docker-compose run web bundle exec rails db:seed`

## Update Gem
`docker-compose run --rm web bundle install`

## Makefileを使う場合

### ビルド
`$ make build`

### 起動
`$ make start`

### Rails console起動
`$ make console`

### DB Migration
`$ make migration`

### DB Create
`$ make create`

### DB Seed
`$ make seed`
