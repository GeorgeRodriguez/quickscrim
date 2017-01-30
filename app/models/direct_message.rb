class DirectMessage < ApplicationRecord
  belongs_to :user
  belongs_to :friendship

  validates_presence_of :body, :conversation_id, :user_id
def message_time
 created_at.strftime(“%m/%d/%y at %l:%M %p”)
end

end
