class User < ActiveRecord::Base
  attr_accessible :username, :password
  acts_as_authentic
end
