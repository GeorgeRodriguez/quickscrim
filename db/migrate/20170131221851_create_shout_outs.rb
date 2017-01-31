class CreateShoutOuts < ActiveRecord::Migration[5.0]
  def change
    create_table :shout_outs do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :shout_outs, [:user_id, :created_at]
  end
end
