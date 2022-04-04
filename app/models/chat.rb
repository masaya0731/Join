class Chat < ApplicationRecord
  # チャット機能に使用
  attachment :chat_image

  belongs_to :user
  belongs_to :room

  has_many :chat_notifications, dependent: :destroy
end
