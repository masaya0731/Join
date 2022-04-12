class Post < ApplicationRecord
  # 投稿（募集）
  attachment :post_image

  belongs_to :user
  #belongs_to :category

  #has_many :post_comments, dependent: :destroy
  #has_many :tags, through: :post_tags
  #has_many :post_tags, dependent: :destroy

end
