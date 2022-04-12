class PostComment < ApplicationRecord
  # 投稿へのコメント
  attachment :post_comment_image

  belongs_to :user
  #belongs_to :post

end
