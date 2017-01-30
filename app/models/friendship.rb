class Friendship < ApplicationRecord
  has_many :direct_messages
  has_many :users, :through => :direct_messages

belongs_to :sender, :foreign_key => :sender_id, class_name: ‘User’
belongs_to :recipient, :foreign_key => :recipient_id, class_name: ‘User’
has_many :messages, dependent: :destroy
validates_uniqueness_of :sender_id, :scope => :recipient_id
scope :between, -> (sender_id,recipient_id) do
where(“(friendships.sender_id = ? AND friendships.recipient_id =?)
 OR (friendships.sender_id = ? AND friendships.recipient_id =?)”,
  sender_id,recipient_id, recipient_id, sender_id)
 end
end
