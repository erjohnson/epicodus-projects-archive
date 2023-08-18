class Vote < ActiveRecord::Base
  belongs_to :answer
  belongs_to :user

  validates_presence_of :user_id, :answer_id
end
