# アプリ名：OutPut-share!
# 概要
## 自身の思考をアウトプットし記録、整理することを助けるツールです。また学びを仲間と共有することでお互いを高め会うことができます。

# 本番環境
## デプロイ先
### https://gentle-caverns-77234.herokuapp.com/
## テストアカウント
### Nickname:TEST
### Email   :test@test.jp
### Password:123456

# 制作背景
## ターゲット：日々アウトプットを習慣化して論理的思考能力、質問力を身に付けたい人
## 目的     ：問題を頭の中でグルグルと考えるのではなく、目に見える形でアウトプット、現状整理を助けるトレーニングツール
### ①問題点、解決したいこと
### ②調べたこと、仮説
### ③②を実行した結果どうだったか、どう改善するか
### ①②③を書いて日々の記録として使う。仲間と共有したり、高め合うことでモチベーションを保つこともできる。
## 開発経緯
### 未経験からエンジニア転職をする自分自身や同じような境遇の人(新社会人も)を支えてくれるツールです。私は毎日が忙しくなるとついインプット中心の勉強方法になる傾向があると感じているのでアウトプットの割合が高い勉強方法を取り入れられる仕組み作りをしたいと考えました。

# DEMO
## ![トップページ] (https://gyazo.com/e24933b4139bdd39236351fc9ffee653)
## ![記録ページ]（https://gyazo.com/b31ae0fe79bc1ea6a762f3319505cad9）
## ![共有ページ] (https://gyazo.com/c48e7a95450d454c4a7bb9024c41942d)

# 工夫したポイント
## いいね機能にはajaxを使用、ビューもユーザーが直感的に操作しやすいつくりにしました。
# 使用技術(開発環境)
## Haml,Scss,Ruby on Rails,ajax
# 課題や今後実装したい機能
## 今後アウトプットした記録事項を振り返れるようカレンダーを取り入れた機能も実装したいです。
# DB設計
## users table
|Column|Type|Options|
|----|----|------|
|nickname|string|null: false|
|email|integer|null: false,unique: true|
|password|integer|null: false|
|password_confirm|integer|null: false|

### Association
- has_many :posts 
- has_many :likes dependent: :destroy


## posts table
|Column|Type|Options|
|----|----|------|
|title|text|null: false|
|content|text|null: false|

### Association
- belongs_to :user
- has_many :likes dependent: :destroy


## records table
|Column|Type|Options|
|----|----|------|
|content1|text|null: false|
|content2|text|null: false|
|content3|text|null: false|

### Association
- belongs_to :user


## likes
|Column|Type|Options|
|----|----|------|
|user_id|references|null:false,foreignkey: true|
|item_id|references|null: false,foreignkey: true|

### Association
- belongs_to :post
- belongs_to :user