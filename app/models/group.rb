class Group < ApplicationRecord
  # グループ作成に使用
  attachment :group_image

  has_many :group_users, dependent: :destroy

end
