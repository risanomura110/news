class Write < ApplicationRecord
  has_one_attached :image
  # 空の投稿を保存できないようにする
  validates :image, :name, :twitter, :blog, :text, presence: true
end
