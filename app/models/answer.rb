class Answer < ActiveRecord::Base
  attr_accessible :title, :body
  belongs_to :question
  validates :body, :question_id, presence: true
end