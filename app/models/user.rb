class User < ActiveRecord::Base
  attr_accessible :email, :username, :password
  validates_presence_of :password, :email, :on => :create
  has_secure_password
  has_many :questions
  has_many :answers
end
