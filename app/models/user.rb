class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :plofile_image

  has_many :posts, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :chats, dependent: :destroy
  has_many :user_rooms, dependent: :destroy
  has_many :group_users, dependent: :destroy
  # フォロー機能のアソシエーション
  has_many :active_relationships, class_name: "Relationship", foreign_key: :followed_id
  has_many :followed, through: :active_relationships, source: :follower
  has_many :passive_relationships, class_name: "Relationship", foreign_key: :follower_id
  has_many :follower, through: :passive_relationships, source: :followed
  # チャット通知とのアソシエーション
  has_many :active_notifications, class_name: 'ChatNotification', foreign_key: 'visitor_id', dependent: :destroy
  has_many :passive_notifications, class_name: 'ChatNotification', foreign_key: 'visited_id', dependent: :destroy

end
