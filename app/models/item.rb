class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  has_one_attached :image
  has_many :comments

  def self.search(search)
    if search != ''
      Item.where('title LIKE(?)', "%#{search}%")
    else
      Item.all
    end
  end
  
  # 空の投稿を保存できないようにする
  validates :image, :name, :title, :genre, :text, presence: true
  # ジャンルの選択が「--」の時は保存できないようにする
  validates :genre_id, numericality: { other_than: 1 }
end
