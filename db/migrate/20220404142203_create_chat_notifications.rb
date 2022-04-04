class CreateChatNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_notifications do |t|

      t.integer :visited_id
      t.integer :visitor_id
      t.integer :chat_id
      t.boolean :checked, default: false, null: false
      t.string :action, default: '', null: false

      t.timestamps
    end
  end
end
