## 環境構築

### 前提
Dockerを使って立ち上げます。

### ビルド
`docker-compose build`

### 起動
`docker-compose up`

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