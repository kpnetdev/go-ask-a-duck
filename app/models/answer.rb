class Answer < Post
  validates :body, :question_id, presence: true
  belongs_to :question
end