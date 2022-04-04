class GroupUser < ApplicationRecord
  # グループの中間テーブル

  belongs_to :user
  belongs_to :group_user
end
