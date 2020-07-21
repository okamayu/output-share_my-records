# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users table
|Colm|Type|Option|
|----|----|------|
|nickname|string|null: false|
|email|integer|null: false,unique: true|
|password|integer|null: false|
|password_confirm|integer|null: false|

### Association
- has_many :posts 
- has_many :likes dependent: :destroy



## posts table
|Colm|Type|Option|
|----|----|------|
|title|text|null: false|
|content|text|null: false|

### Association
- belongs_to :user
- has_many :likes dependent: :destroy


## records table
|Colm|Type|Option|
|----|----|------|
|content1|text|null: false|
|content2|text|null: false|
|content3|text|null: false|

### Association
- belongs_to :user


## likes
|Colm|Type|Option|
|----|----|------|
|user_id|references|null:false,foreignkey: true|
|item_id|references|null: false,foreignkey: true|

### Association
- belongs_to :post
- belongs_to :user