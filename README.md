## items 
| Column    | Type      | Options                        |
| ------    | ------    | ------------------------------ |
| name      | string    | null: false                    |
| title     | string    | null: false                    |
| gere_id   | integer   | null: false                    |
| text      | text      | null: false                    |

### Association
  belongs_to_active_hash :genre
  has_one_attached :image
  has_many :comments


## commentsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | string     | null: false                    |
| item   | references | null: false, foreign_key: true |

### Association

- belongs_to :item
