class Room < ApplicationRecord
  # DM機能に使用
  has_many :chats, dependent: :destroy
end
