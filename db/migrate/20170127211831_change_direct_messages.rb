class ChangeDirectMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :direct_messages do |t|
      t.text :body
      t.references :friendships, index: true
      t.references :users, index: true
      t.boolean :read, :default => false

      t.timestamps
    end
  end
end
