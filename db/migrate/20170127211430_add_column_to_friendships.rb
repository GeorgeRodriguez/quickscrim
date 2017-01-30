class AddColumnToFriendships < ActiveRecord::Migration[5.0]
  def change
    add_column :friendships, :sender_id, :integer
    add_column :friendships, :recipient_id, :integer
  end
end
