class Question < Post
  validates :title, :body, presence: true
  belongs_to :user
  has_many :answers
end