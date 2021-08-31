# アプリケーション名
  'share_works'

# アプリケーション概要
- 社内向け情報共有システム。コールセンター・全国展開している小売りなど向け。

# URL
- 予定

# テスト用アカウント
- メールアドレス：abc@abc.com
- パスワード123abc

# 利用方法
- 各マニュアルを追加・閲覧、QAを追加できる

# 目指した課題解決
- マニュアルはきちんと用意はされているが、マニュアルに記載がないことで、
  各担当部署へ質問した結果解決できた内容が、各店舗または社内での共有ができないことを、
  解決する。

# 要件定義
- DB設計
- ユーザー管理機能
- メニュー画面
- マニュアル・QA一覧画面
- マニュアル追加機能
- QA追記機能
- マニュアル編集機能
- QA編集機能

# 実装した機能についての説明
 - ユーザーの新規登録・ログイン機能
 - マニュアルの追記機能

# 実装予定の機能
 - 思案中

# データベース設計
 - ER図
[![Image from Gyazo](https://i.gyazo.com/2fb92fda3139f7d4b5d43ee263e21537.png)](https://gyazo.com/2fb92fda3139f7d4b5d43ee263e21537)
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

 # ローカルでの動作方法
 - 作成予定