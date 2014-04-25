class User < ActiveRecord::Base
  attr_accessible :email, :username
  has_secure_password
  validates_presence_of :password, :email, :on => :create
end
