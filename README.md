# react nodejs(express) mysql デモアプリ

## 構築手順

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
