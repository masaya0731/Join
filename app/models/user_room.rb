class UserRoom < ApplicationRecord
  # DMの中間テーブル
  belongs_to :user
  belongs_to :room
end
