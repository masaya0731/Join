class Category < ApplicationRecord
  # 投稿にカテゴリーを追加するのに使用

  belongs_to :posts, dependent: :destroy
end
