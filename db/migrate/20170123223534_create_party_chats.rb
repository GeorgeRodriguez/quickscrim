class CreatePartyChats < ActiveRecord::Migration[5.0]
  def change
    create_table :party_chats do |t|

      t.timestamps
    end
  end
end
