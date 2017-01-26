<<<<<<< HEAD
class User < ActiveRecord::Base  
=======
class User < ActiveRecord::Base
  has_many :scrimmages
  has_many :friendships
  has_many :direct_messages, :through => :friendships

>>>>>>> 1cf1591cf22fdefaa7e5554526d705d61dbc94a8
  has_secure_password
end
