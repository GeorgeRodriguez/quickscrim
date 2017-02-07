class CreateDirectMessages < ActiveRecord::Migration[5.0]
  def change
   create_table :direct_messages do |t|
    t.text :body
    t.references :friendship, index: true
    t.references :user, index: true
    t.boolean :read, :default => false
    
    t.timestamps
   end
  end
 end
