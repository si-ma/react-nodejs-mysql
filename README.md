# react nodejs(express) mysql デモアプリ

## doker-composeから起動

```bash
#image作成
docker-compose build
docker-compose up -d
```

frontend

```bash
#frontコンテナに入る
docker exec -it front bash -p

#node_moduleをinstallする
npm install

#起動
npm start
```

backend

```bash
#backコンテナに入る
docker exec -it back bash -p

#node_moduleをinstallする
npm install

```

mysql

```bash
#dockerコンテナに入る
docker exec -it mysql bash -p
mysql -uuser -p

#サンプルデータを登録(mysql/app.sql)
```

## 構築手順(0から構築)

コンテナ作成

```bash
# コンテナ作成
docker-compose up -d
```

expressインストール

```bash
#backコンテナに入る
docker exec -u node -it back /bin/bash

#project作成
npm init -y

#express install
npm install express

# nodemonをinstall
npm install nodemon --save-dev

#mysqlモジュールをinstall
npm install --save mysql

#index.jsに処理を書く

#起動
npm start
```

reactプロジェクト作成

```bash
#frontコンテナに入る
docker exec -u node -it front /bin/bash

# react プロジェクト作成
npx create-react-app .

#App.jsに処理を書く

#package.jsonに"proxy": "http://backend:3000"を追加

#起動
npm start

```
