class Question < ActiveRecord::Base

  validates_presence_of :user_id, :content

  belongs_to :user
  has_many :tags
  has_many :answers
end
