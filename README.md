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
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|group_id|integer|null: false, foreign_key: true|

### Association
- has_many :tweets
- has_many :groups

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|image|string||
|users_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :users
- has_many :groups

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|group_name|string||
|user_name|string||
|tweets_id|integer|null: false, foreign_key: true|
|users_id|integer|null: false, foreign_key: true|

### Association
- has_many :users
- has_many :tweets

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|users_id|integer|null: false, foreign_key: true|
|groups_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :groups
- belongs_to :users

## groups_tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|tweets_id|integer|null: false, foreign_key: true|
|groups_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :groups
- belongs_to :tweets