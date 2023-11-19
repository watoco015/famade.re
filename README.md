# アプリケーション名
faMde

# URL
https://famade-re.onrender.com

# テスト用アカウント
Basic認証パスワード：0115
Basic認証ID：famade
メールアドレス：test@com
パスワード：test12

# アプリケーション概要
家族間で作ったハンドメイド作品、料理のレシピの共有ができる

# 利用方法
## 作品投稿
1.トップページからユーザー新規登録を行う <br>
2.作品投稿ボタンから新規投稿（作品写真、タイトル、内容）を入力して投稿する

# アプリケーションを作成した背景

家族みんなで、それぞれで作った作品の共有が誰でも簡単にできるようなツールが欲しかった。
それぞれが色々な素材を使って、様々な作品を作るので「いつ・誰が・何を」作ったのかが分かるようにしたい。
家族間でコミュニケーションを取れる場にもしたかった。


# 洗い出した要件
https://docs.google.com/spreadsheets/d/1ev-SR6nSbgj1VSErYUReCavJ2lQZjOIbdHgRL82l8vU/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明
## 作品投稿ページ
https://gyazo.com/cff6f7f0b44e8ca2959516d7e50ef49a
手軽で誰でも簡単に投稿できるように画像、タイトル、作品の内容のみの入力になっている

## 作品詳細ページ
### ログイン後
https://gyazo.com/58389563a9326cec868818a11729323a
### ログイン前
https://gyazo.com/c834acea99a5f618da2fcec1fc810342

ログイン後はお気に入り機能、コメント入力欄が表示される

## お気に入り機能
https://gyazo.com/6af1750095d2d3e36da8b815948a4543
お気に入りすると色が変わり、登録済みと表示される

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/1baa6c2d9163b97eaf174b7528ef6bb9.png)](https://gyazo.com/1baa6c2d9163b97eaf174b7528ef6bb9)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/dde3685ca4daed6dc9c4f515448fd77a.png)](https://gyazo.com/dde3685ca4daed6dc9c4f515448fd77a)

# 開発環境
HTML CSS
JavaScript
Ruby
Ruby on Rails
MySQL
VScode
GitHub

# 実装予定の機能
投稿時画像複数選択、お気に入りトップページ表示、コメントの削除機能