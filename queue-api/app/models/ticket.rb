class Ticket < ActiveRecord::Base
  belongs_to :project

  validates :student, :presence => true
  validates :question, :presence => true
  validates :project_id, :presence => true
end
