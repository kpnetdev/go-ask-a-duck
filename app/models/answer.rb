class Answer < ActiveRecord::Base
  attr_accessible :title, :body
  validates :body, :question_id, presence: true
  belongs_to :user
  belongs_to :question
  has_many :comments, as: :commentable

end