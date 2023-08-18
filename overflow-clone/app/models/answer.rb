class Answer < ActiveRecord::Base
  validates_presence_of :content, :question_id, :user_id

  belongs_to :user
  belongs_to :question
  has_many :votes
end
