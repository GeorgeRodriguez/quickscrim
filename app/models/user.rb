class User < ActiveRecord::Base
  has_many :scrimmages
  has_many :friendships
  has_many :direct_messages, :through => :friendships
  has_secure_password
end
