バックエンド
# アプリケーション名

**エンジニアは何が好き？**

# アプリケーションの概要

エンジニアに好きな技術を投稿してもらい、その数をもとにワードクラウドを生成します。

一目でどの技術が人気があるかわかります。

# URL

[アプリケーション](https://what-engineers-like.herokuapp.com/)

[フロントエンド](https://github.com/a-kit-2/what-engineers-like-frontend)

# 利用方法

1. エンジニア目線で好きな技術をフォームから投稿します。
2. 今までのエンジニアが入力したデータからワードクラウドを生成され、今人気の技術を視覚的に知ることができます。

# 目指した課題解決

今のエンジニアの流行りや好きな技術を**一目で**知りたいという問題を解決したい。

# 要件定義

### 目的

- エンジニアの今好きな技術を集めたい。
- ワードクラウドを利用して一目で人気を知ることができる。

### 概要

1. エンジニアが好きな技術を入力する。
2. 入力されたデータをデータベースに保存する。
3. データベースから今までのデータを取得しワードクラウドを制作する。

### 使用技術

- Rails API モード
- Vue.js 2
- MySQL
- Heroku

### 機能

- 自分の好きな技術をフォームから入力できる。
- 今まで入力されたデータからワードクラウドを作る。

### アイデア

- ユーザー登録不要で入力し放題。
- ワードクラウドで人気技術が一目でわかる。
- 気軽に誰でも入力できる。

<img width="1341" alt="what-engineers-like-mindmap" src="https://user-images.githubusercontent.com/74124955/127434019-579e45bd-61c2-445f-9ee5-f89645103c95.png">

# 実装した機能についてのGIFと説明

好きな技術を投稿するとデータをもとにワードクラウドを生成する。

![test](https://user-images.githubusercontent.com/74124955/127583957-b5721e21-f00b-44dd-9a0c-73f474956276.gif)

# 実装予定の機能

- どれだけの投稿があるのか数値で表示できるようにする。
- タグをつけて分類する。

# 設計

## ユースケース図

![use_case_diagram](https://user-images.githubusercontent.com/74124955/126922900-e4549c0f-9952-44b7-97d7-87ba07dc3b2a.png)

## DB設計

![er_diagram](https://user-images.githubusercontent.com/74124955/126923589-e35e7c0c-47d0-4dae-bbf8-50705f744c7d.png)

## クラス図 

![class_diagram](https://user-images.githubusercontent.com/74124955/127587329-1947d00c-f14a-46c1-aed6-7afa8b4e2fcb.png)

## UI設計

![ui_diagram](https://user-images.githubusercontent.com/74124955/126923043-74d97677-d948-4c6f-9c85-2e244214b36b.png)

## API設計

| URI         | METHOD | DESCRIPTION                            |
| ----------- | ------ | -------------------------------------- |
| /show_likes | GET    | 今までのデータを取得する。                   |
| /new_like   | POST   | ユーザーが登録したデータをデータベースに保存する。 |

