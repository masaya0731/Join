class ChatNotification < ApplicationRecord
  # チャットの通知機能に使用

  belongs_to :chat

  # ユーザーとのアソシエーション
  has_many :visited_id, class_name: 'User', foreign_key: 'visitor_id'
  has_many :visitor_id, class_name: 'User', foreign_key: 'visited_id'
end
