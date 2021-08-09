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
# usersテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| birthday           | date   | null: false |

### Association
- has_many :items
- has_many :orders

# itemsテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| product                | string     | null: false                    |
| product_description    | text       | null: false                    |
| category_id            | integer    | null: false                    |
| product_detail_id      | integer    | null: false                    |
| ship_base_id           | integer    | null: false                    |
| prefecture_id          | integer    | null: false                    |
| ship_date_id           | integer    | null: false                    |
| price                  | integer    | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :order

# ordersテーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| item       | references | null: false, foreign_key: true |

### Association
- belongs_to :item
- belongs_to :user
- has_one :address

# addressesテーブル
| Column         | Type       | Options                        |
| ---------------| ---------- | ------------------------------ |
| post_code      | string     | null: false                    |
| prefecture_id  | integer    | null: false                    |
| city           | string     | null: false                    |
| block          | string     | null: false                    |
| building       | string     |                                |
| phone_number   | string     | null: false                    |
| order          | references | null: false, foreign_key: true |

### Association
- belongs_to :order

 # ローカルでの動作方法
 - 作成予定
# ローカルでの動作方法
- 作成予定