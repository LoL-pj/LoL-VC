## 環境構築

### 前提
Dockerを使って立ち上げます。

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
