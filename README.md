## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :groups, through: groups_users
- has_many :messages, through: groups_users


## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|group_name|integer|null: false, foreign_key: ture|

### Association
- has_many :users, through: groups_users
- has_many :messages, through: groups_users

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|text|null: false|

### Association
- has_many :users, through: groups_users
- has_many :groups, through: groups_users



