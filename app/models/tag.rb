class Tag < ApplicationRecord
  # 投稿に使うタグ
  #has_many :post_tag, dependent: :destroy, foreign_key: 'tag_id'
  #has_many :posts, through: :post_tags
end
