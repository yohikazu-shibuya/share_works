# アプリケーション名
  'share_works'

# アプリケーション概要
- 社内向け情報共有システム。コールセンター・全国展開している小売りなど向け。

# URL
- https://share-works-34737.herokuapp.com/

# テスト用アカウント
- メールアドレス：abc@abc.com
- パスワード123abc

# 利用方法
- 各店舗や、各部署、コールセンター等で、周知や、Q&Aを追加したり共有できる

# 目指した課題解決
- 各店舗やコールセンターで、マニュアルはきちんと準備はされている。
  しかし、マニュアルに記載がないことで、各担当部署へ質問した結果解決できた内容が、
  各店舗または社内での共有ができないことを解決することが目的。

# 要件定義


|　機能　　　　　　|  目的　　　　　　　　　　　　　　　　　　|  詳細　　　　　　　　　　　　　　　　| ストーリー(ユースケース)          | 
| --------------|-----------------------------------|--------------------------------|------------------------------ | 
|　ＤＢ設計　　　　|　アプリ作成の全体像を把握する為　　　　　|　必要テーブル users/notices/      |　                             |
|　　　　　　　　　|　の必要テーブルの洗いだし　　　　　　　　|　qas/messages                   |　　　　　　　　　　　            |
| --------------|-----------------------------------|--------------------------------|------------------------------ | 
|　ユーザー管理  　|　deviceを用いたユーザー管理機能       |　トップページ真ん中に、             |  機能を利用するには、新規登録や、  |
|　機能　　　　　　|　の必要テーブルの洗いだし　　　　　　　　|　ログイン・新規登録機能を、　　　　　 |  ログインが必要になる。          |
|　　　　　　　　　|　　　　　　　　　　　　　　　　　　　　　|　表示させる　　　　　　　　　　　　　 |                      　　　　　|
| --------------|-----------------------------------|--------------------------------|------------------------------ |
|　お知らせ一覧　　|　何かあった時にすぐ情報共有ができる為　　|　一覧には、投稿者、時間、カテゴリ、   |  ログインすると、お知らせ一覧が   |
|　表示機能　　　　|　　　　　　　　　　　　　　　　　　　　　|　題名を表示させる　　　　　　　　　   |  表示される。件名をクリックする   | 
|　　　　　　　　　|　　　　　　　　　　　　　　　　　　　　　|　　　　　　　　　                  |  と詳細が見れる。               | 
| --------------|-----------------------------------|--------------------------------|------------------------------ | 
|　お知らせ　　　　|　すぐに情報共有が必要な場合に投稿する   |　カテゴリ、題名(件名)、内容を        |  知り得た情報を登録できる。      | 
|　投稿機能　　　　|　　　　　　　　　　　　　　　　　　　　　|　入力してもらう　　　　　　　　      |                              |
| --------------|-----------------------------------|--------------------------------|----------------------------- | 
|　Q&A一覧　　　　|　マニュアルに記載していない情報を、　　　|　一覧には投稿者、時間、カテゴリ、     |  Q&A一覧をクリックすると、      |
|　投稿機能　　　　|　知りたい時に確認できる　　　　　　　　　|　題名を表示させる　　　             |  マニュアルに無い情報が         |
|　　　　　　　　　|　　　　　　　　　　　　　　　　　　　　　|                                 |   表示される          　　　　 |
| --------------|-----------------------------------|--------------------------------|----------------------------- |   
|　Ｑ&Ａ　　　　　|　マニュアルに記載がなく、新たに知り得た  |　カテゴリ、題名(件名)、質問内容、     |  知り得た情報を登録できる。     |
|　投稿機能　　　 |　情報を登録し、共有ができる            |　回答を入力してもらう 　　　         |                             |
| --------------|-----------------------------------|--------------------------------|----------------------------- |
| Ｑ&Ａコメント  |　補足情報があったときに見れる。         |　一覧には、投稿者、時間、確認内容     |   Q&Aに記載している情報で、     |  
| 一覧表示機能   |                                   |  回答を表示させる      　           |   補足情報があった場合見られる。 | 
| -------------|------------------------------------|--------------------------------|----------------------------- |
| Q&Aコメント   |　追加の情報や、保続情報があった際に　　　 |　投稿者、時間、確認内容、回答を、     |　知り得た情報を登録できる。      |   
| 投稿機能      |　追加できる　　　　　　　　　　　　　　　 |　入力してもらう 　　　              |                    　　　　　 |


## 要件定義
　機能　　　　　　|  目的　　　　　　　　　　　　　　　　　　|  詳細　　　　　　　　　　　　　　　　| ストーリー(ユースケース)          | 
--------------|-----------------------------------|--------------------------------|------------------------------ | 
　ＤＢ設計　　　　|　アプリ作成の全体像を把握する為　　　　　|　必要テーブル users/notices/      |　                             |
　　　　　　　　　|　の必要テーブルの洗いだし　　　　　　　　|　qas/messages                   |　　　　　　　　　　　            |
 --------------|-----------------------------------|--------------------------------|------------------------------ | 


# 実装した機能についての説明
 - ユーザーの新規登録・ログイン機能
 - マニュアルの追記機能

# 実装予定の機能
 - 画像投稿機能
 - 良いね機能 ※閲覧者が参考になった場合、数字をカウントできる機能
 - プルダウンで選択した項目だけ表示される機能

# データベース設計
 - ER図
[![Image from Gyazo](https://i.gyazo.com/8f291b9972eb515741fced1d6f1ab75c.png)](https://gyazo.com/8f291b9972eb515741fced1d6f1ab75c)

# テーブル設計

# usersテーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| last_name_kana     | string | null: false               |
| first_name_kana    | string | null: false               |
| affiliation        | string | null: false               |

### Association
- has_many :notices
- has_many :qas
- has_many :messages

# noticesテーブル
| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| genre_id | integer    | null: false                    |
| subject  | string     | null: false                    |
| notice   | text       | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :messages

# qasテーブル
| Column   | Type       | Options                        |
| -------- | ---------- | -------------------------------|
| genre_id | integer    | null: false                    |
| subject  | string     | null: false                    |
| question | text       | null: false                    |
| answer   | text       | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :messages

# messagesテーブル
| Column  | Type       | Options                        |
| ------- | ---------- | -------------------------------|
| subject | text       | null: false                    |
| message | text       | null: false                    |
| qa      | references | null: false, foreign_key: true |
| user    | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :notice
- belongs_to :qa

### ローカルでの動作方法
git clone https://github.com/yohikazu-shibuya/share_works.git
ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-darwin20]

