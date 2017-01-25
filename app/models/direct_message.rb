class DirectMessage < ApplicationRecord
  belongs_to :user
  belongs_to :friendship
end
