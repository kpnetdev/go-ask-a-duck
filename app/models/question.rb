class Question < ActiveRecord::Base
  attr_accessible :title, :body
  validates :title, :body, presence: true
  belongs_to :user
  has_many :answers
  has_many :comments, as: :commentable
end