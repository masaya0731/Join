class Post < ApplicationRecord
  attachment :post_image

  belongs_to :user
  belongs_to :category

  has_many :post_comments, dependent: :destroy
  has_many :post_tags, dependent: :destroy
end
